import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/common/model/user.dart';
import 'package:ielts_practice_mobile/repository/authentication_repository/authentication_repository.dart';
import 'package:ielts_practice_mobile/repository/user_repository/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required UserRepository userRepository,
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super(const AuthenticationState(status: AuthenticationStatus.unknown)) {
    on<_AuthenticationStatusChangedEvent>(_onStatusChanged);
    on<_AuthenticationLogoutRequestedEvent>(_onLogoutRequested);

    // add subscription
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(AuthenticationEvent.statusChanged(status: status)),
    );
  }

  final UserRepository _userRepository;
  final AuthenticationRepository _authenticationRepository;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }

  FutureOr<void> _onLogoutRequested(
    _AuthenticationLogoutRequestedEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authenticationRepository.logOut();
  }

  FutureOr<void> _onStatusChanged(
    _AuthenticationStatusChangedEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
      case AuthenticationStatus.unknown:
        return emit(AuthenticationState(status: event.status));
      case AuthenticationStatus.authenticated:
        final user = await _tryGetUser();
        if (user == null) {
          return emit(
            const AuthenticationState(
              status: AuthenticationStatus.unauthenticated,
            ),
          );
        }
        return emit(AuthenticationState(status: event.status, user: user));
    }
  }

  Future<User?> _tryGetUser() async {
    try {
      final user = await _userRepository.getUser();
      return user;
    } catch (_) {
      return null;
    }
  }
}
