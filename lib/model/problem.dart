import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/model/error_item.dart';

part 'problem.freezed.dart';
part 'problem.g.dart';

@freezed
class Problem with _$Problem {
  factory Problem({
    required String type,
    required String title,
    required int status,
    required String traceId,
    required List<ErrorItem> errors,
  }) = _Problem;

  factory Problem.fromJson(Map<String, dynamic> json) =>
      _$ProblemFromJson(json);
}
