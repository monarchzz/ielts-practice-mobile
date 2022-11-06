part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required String currentPassword,
    required String newPassword,
    required String confirmNewPassword,
  }) = _ChangePasswordState;
}
