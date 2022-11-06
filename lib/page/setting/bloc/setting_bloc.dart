import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/user.dart';
import 'package:ielts_practice_mobile/repository/user_repository/user_repository.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc({required this.userRepository})
      : super(const SettingState.loading()) {
    on<_Started>(_onStarted);
  }

  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<SettingState> emit,
  ) async {
    final l10n = await L10nUtil.l10n;
    final user = await userRepository.getUser();

    if (user != null) {
      emit(SettingState.success(user: user));
      return;
    }
    emit(SettingState.failure(message: l10n.unknownError));
  }
}
