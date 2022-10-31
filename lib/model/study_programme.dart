import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/model/enum/study_programme_type.dart';

part 'study_programme.freezed.dart';
part 'study_programme.g.dart';

@freezed
class StudyProgramme with _$StudyProgramme {
  factory StudyProgramme({
    required String id,
    required String name,
    required StudyProgrammeType type,
    String? description,
  }) = _StudyProgramme;

  factory StudyProgramme.fromJson(Map<String, dynamic> json) =>
      _$StudyProgrammeFromJson(json);
}
