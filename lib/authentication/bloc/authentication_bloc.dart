import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/common/util.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';
import 'package:ielts_practice_mobile/model/user.dart';
import 'package:ielts_practice_mobile/repository/attachment_repository/attachment_repository.dart';
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
    required AttachmentRepository attachmentRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        _attachmentRepository = attachmentRepository,
        super(const AuthenticationState(status: AuthenticationStatus.unknown)) {
    on<_AuthenticationStatusChanged>(_onStatusChanged);
    on<_AuthenticationLogoutRequested>(_onLogoutRequested);
    on<_UserUpdated>(_onUserUpdated);
    on<_AvatarUpdated>(_onAvatarUpdated);

    // add subscription
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) {
        add(AuthenticationEvent.statusChanged(status: status));
      },
    );
  }

  final UserRepository _userRepository;
  final AuthenticationRepository _authenticationRepository;
  final AttachmentRepository _attachmentRepository;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }

  FutureOr<void> _onLogoutRequested(
    _AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authenticationRepository.logOut();
  }

  FutureOr<void> _onStatusChanged(
    _AuthenticationStatusChanged event,
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

  FutureOr<void> _onUserUpdated(
    _UserUpdated event,
    Emitter<AuthenticationState> emit,
  ) async {}

  FutureOr<void> _onAvatarUpdated(
    _AvatarUpdated event,
    Emitter<AuthenticationState> emit,
  ) async {
    // show dialog
    unawaited(showLoadingDialog());

    final result = await _attachmentRepository.uploadImage(event.path);

    if (result is ApiError) {
      // hide dialog
      getIt.navigator.pop();

      emit(state.copyWith(errorMessage: (result as ApiError).message));
      emit(state.copyWith(errorMessage: null));
    }
    if (result is ApiSuccess) {
      final currentUser = state.user;
      if (currentUser == null) return;

      final updateUserResult = await _userRepository.selfUpdate(
        id: currentUser.id,
        firstName: currentUser.firstName,
        lastName: currentUser.lastName,
        gender: currentUser.gender,
        dateOfBirth: currentUser.dateOfBirth,
        avatarId: (result as ApiSuccess<String>).value,
      );

      // hide dialog
      getIt.navigator.pop();

      if (updateUserResult is ApiSuccess) {
        final user = await _tryGetUser();
        emit(state.copyWith(user: user));
      }

      if (updateUserResult is ApiError) {
        emit(
          state.copyWith(errorMessage: (updateUserResult as ApiError).message),
        );
        emit(state.copyWith(errorMessage: null));
      }
    }
  }
}
