part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.started() = _Started;
  const factory SettingEvent.nameChanged(String firstName, String lastName) =
      _NameChanged;
  const factory SettingEvent.genderChanged(Gender value) = _GenderChanged;
  const factory SettingEvent.dateOfBirthChanged(DateTime value) =
      _DateOfBirthChanged;
}
