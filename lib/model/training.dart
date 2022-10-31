import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/model/attachment.dart';
import 'package:ielts_practice_mobile/model/enum/training_level.dart';
import 'package:ielts_practice_mobile/model/enum/training_session.dart';
import 'package:ielts_practice_mobile/model/enum/training_status.dart';
import 'package:ielts_practice_mobile/model/enum/training_type.dart';

part 'training.freezed.dart';
part 'training.g.dart';

@freezed
class Training with _$Training {
  factory Training({
    required String id,
    required String name,
    required TrainingSession trainingSession,
    required TrainingType type,
    required TrainingLevel level,
    required TrainingStatus status,
    required bool forExamOnly,
    Attachment? audio,
    Attachment? image,
    required String managerId,
    String? examId,
    String? studyProgrammeSectionId,
  }) = _Training;

  factory Training.fromJson(Map<String, dynamic> json) =>
      _$TrainingFromJson(json);
}
