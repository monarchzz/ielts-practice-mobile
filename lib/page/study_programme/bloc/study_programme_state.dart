part of 'study_programme_bloc.dart';

@freezed
class StudyProgrammeState with _$StudyProgrammeState {
  const factory StudyProgrammeState({
    required List<StudyProgramme> studyProgrammes,
  }) = _StudyProgrammeState;
}
