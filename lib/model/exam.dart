import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/model/enum/exam_status.dart';

part 'exam.freezed.dart';
part 'exam.g.dart';

@freezed
class Exam with _$Exam {
  factory Exam({
    required String id,
    required String name,
    required ExamStatus status,
    required String managerId,
  }) = _Exam;

  factory Exam.fromJson(Map<String, dynamic> json) => _$ExamFromJson(json);
}
