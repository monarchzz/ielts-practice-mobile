part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;
  const factory SignUpEvent.submitted(
    String email,
    String firstName,
    String lastName,
    String password,
    Gender gender,
  ) = _Submitted;
}
