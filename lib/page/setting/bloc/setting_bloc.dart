import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/common/util.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';
import 'package:ielts_practice_mobile/model/enum/gender.dart';
import 'package:ielts_practice_mobile/model/user.dart';
import 'package:ielts_practice_mobile/repository/user_repository/user_repository.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc({required this.userRepository})
      : super(const SettingState.loading()) {
    on<_Started>(_onStarted);
    on<_NameChanged>(_onNameChanged);
    on<_DateOfBirthChanged>(_onDateOfBirthChanged);
    on<_GenderChanged>(_onGenderChanged);
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

  FutureOr<void> _onNameChanged(
    _NameChanged event,
    Emitter<SettingState> emit,
  ) async {
    if (state is! _Success) return;
    final user = (state as _Success).user;
    final l10n = await L10nUtil.l10n;

    // show dialog
    unawaited(showLoadingDialog());

    final result = await userRepository.selfUpdate(
      id: user.id,
      firstName: event.firstName,
      lastName: event.lastName,
      gender: user.gender,
      dateOfBirth: user.dateOfBirth,
      avatarId: user.avatar?.id,
    );

    // hide dialog
    navigatorPop();

    if (result is ApiSuccess) {
      unawaited(showMessageDialog(l10n.alert, l10n.updateNameSuccess));
      final user = await userRepository.getUser();
      if (user != null) {
        emit(SettingState.success(user: user));
      }
    }
    if (result is ApiError) {
      unawaited(
        showErrorMessageDialog(
          l10n.alert,
          (result as ApiError).message ?? l10n.unknownError,
        ),
      );
    }
  }

  FutureOr<void> _onDateOfBirthChanged(
    _DateOfBirthChanged event,
    Emitter<SettingState> emit,
  ) async {
    if (state is! _Success) return;
    final user = (state as _Success).user;
    final l10n = await L10nUtil.l10n;

    // show dialog
    unawaited(showLoadingDialog());

    final result = await userRepository.selfUpdate(
      id: user.id,
      firstName: user.firstName,
      lastName: user.lastName,
      gender: user.gender,
      dateOfBirth: event.value,
      avatarId: user.avatar?.id,
    );

    // hide dialog
    navigatorPop();

    if (result is ApiSuccess) {
      unawaited(showMessageDialog(l10n.alert, l10n.updateNameSuccess));
      final user = await userRepository.getUser();
      if (user != null) {
        emit(SettingState.success(user: user));
      }
    }
    if (result is ApiError) {
      unawaited(
        showErrorMessageDialog(
          l10n.alert,
          (result as ApiError).message ?? l10n.unknownError,
        ),
      );
    }
  }

  FutureOr<void> _onGenderChanged(
    _GenderChanged event,
    Emitter<SettingState> emit,
  ) async {
    if (state is! _Success) return;
    final user = (state as _Success).user;
    final l10n = await L10nUtil.l10n;

    // show dialog
    unawaited(showLoadingDialog());

    final result = await userRepository.selfUpdate(
      id: user.id,
      firstName: user.firstName,
      lastName: user.lastName,
      gender: event.value,
      dateOfBirth: user.dateOfBirth,
      avatarId: user.avatar?.id,
    );

    // hide dialog
    navigatorPop();

    if (result is ApiSuccess) {
      unawaited(showMessageDialog(l10n.alert, l10n.updateNameSuccess));
      final user = await userRepository.getUser();
      if (user != null) {
        emit(SettingState.success(user: user));
      }
    }
    if (result is ApiError) {
      unawaited(
        showErrorMessageDialog(
          l10n.alert,
          (result as ApiError).message ?? l10n.unknownError,
        ),
      );
    }
  }
}
