import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc()
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
  ) {}
}
