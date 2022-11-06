part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.success({
    required User user,
    String? errorMessage,
  }) = _Success;
  const factory ProfileState.failure({String? message}) = _Failure;
}
