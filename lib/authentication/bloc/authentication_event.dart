part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.statusChanged({
    required AuthenticationStatus status,
  }) = _AuthenticationStatusChanged;
  const factory AuthenticationEvent.logoutRequested() =
      _AuthenticationLogoutRequested;
}
