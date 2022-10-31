import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_programme_section.freezed.dart';
part 'study_programme_section.g.dart';

@freezed
class StudyProgrammeSection with _$StudyProgrammeSection {
  factory StudyProgrammeSection({
    required String id,
    required String title,
    required int ordinal,
    required String studyProgrammeId,
  }) = _StudyProgrammeSection;

  factory StudyProgrammeSection.fromJson(Map<String, dynamic> json) =>
      _$StudyProgrammeSectionFromJson(json);
}
