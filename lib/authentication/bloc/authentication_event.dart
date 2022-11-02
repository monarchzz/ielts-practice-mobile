part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.statusChanged({
    required AuthenticationStatus status,
  }) = _AuthenticationStatusChanged;
  const factory AuthenticationEvent.logoutRequested() =
      _AuthenticationLogoutRequested;
  const factory AuthenticationEvent.userUpdated() = _UserUpdated;
  const factory AuthenticationEvent.avatarUploaded(String path) =
      _AvatarUpdated;
}
