part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.started() = _Started;
  const factory ChangePasswordEvent.currentPasswordChanged(String value) =
      _CurrentPasswordChanged;
  const factory ChangePasswordEvent.newPasswordChanged(String value) =
      _NewPasswordChanged;
  const factory ChangePasswordEvent.confirmNewPasswordChanged(String value) =
      _ConfirmNewPasswordChanged;
  const factory ChangePasswordEvent.submitted() = _Submitted;
}
