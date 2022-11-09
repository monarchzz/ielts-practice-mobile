part of 'training_bloc.dart';

@freezed
class TrainingState with _$TrainingState {
  const factory TrainingState.initial() = _Initial;
  const factory TrainingState.loading() = _Loading;
  const factory TrainingState.success({
    required TrainingType type,
    required List<Training> trainings,
  }) = _Success;
  const factory TrainingState.failure({String? message}) = _Failure;
}
