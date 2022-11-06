part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.loading() = _Loading;
  const factory SettingState.success({
    required User user,
  }) = _Success;
  const factory SettingState.failure({String? message}) = _Failure;
}
