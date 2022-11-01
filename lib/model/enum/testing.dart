import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/model/converter/duration_converter.dart';

part 'testing.freezed.dart';
part 'testing.g.dart';

@freezed
class Testing with _$Testing {
  factory Testing({
    required String id,
    @DurationConverter() required Duration duration,
    required DateTime date,
    double? speakingScores,
    required String userId,
    String? managerId,
    String? examId,
    String? trainingId,
  }) = _Testing;

  factory Testing.fromJson(Map<String, dynamic> json) =>
      _$TestingFromJson(json);
}
