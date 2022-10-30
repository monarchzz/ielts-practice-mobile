part of 'bottom_navigation_bloc.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState.initial() = _Initial;
  const factory BottomNavigationState.loading() = _Loading;
  const factory BottomNavigationState.success({
    required int bottomNavigationIndex,
  }) = _Success;
  const factory BottomNavigationState.failure({String? message}) = _Failure;
}
