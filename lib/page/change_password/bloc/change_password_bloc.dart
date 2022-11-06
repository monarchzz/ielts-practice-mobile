import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/common/util.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';
import 'package:ielts_practice_mobile/repository/user_repository/user_repository.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc({required this.userRepository})
      : super(
          const ChangePasswordState(
            currentPassword: '',
            newPassword: '',
            confirmNewPassword: '',
          ),
        ) {
    on<_Started>(_onStared);
    on<_CurrentPasswordChanged>(_onCurrentPasswordChanged);
    on<_NewPasswordChanged>(_onNewPasswordChanged);
    on<_ConfirmNewPasswordChanged>(_onConfirmNewPasswordChanged);
    on<_Submitted>(_onSubmitted);
  }

  final UserRepository userRepository;

  FutureOr<void> _onStared(
    _Started event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(
      const ChangePasswordState(
        currentPassword: '',
        newPassword: '',
        confirmNewPassword: '',
      ),
    );
  }

  FutureOr<void> _onCurrentPasswordChanged(
    _CurrentPasswordChanged event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(currentPassword: event.value));
  }

  FutureOr<void> _onNewPasswordChanged(
    _NewPasswordChanged event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(newPassword: event.value));
  }

  FutureOr<void> _onConfirmNewPasswordChanged(
    _ConfirmNewPasswordChanged event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(confirmNewPassword: event.value));
  }

  FutureOr<void> _onSubmitted(
    _Submitted event,
    Emitter<ChangePasswordState> emit,
  ) async {
    //show loading dialog
    unawaited(showLoadingDialog());

    final result = await userRepository.changePassword(
      currentPassword: state.currentPassword,
      newPassword: state.newPassword,
    );

    getIt.navigator.pop();

    final l10n = await L10nUtil.l10n;
    if (result is ApiSuccess) {
      getIt.navigator.pop();

      unawaited(showMessageDialog(l10n.alert, l10n.changePasswordSuccess));
    }
    if (result is ApiError) {
      unawaited(
        showErrorMessageDialog(l10n.alert, (result as ApiError).message ?? ''),
      );
    }
  }
}
