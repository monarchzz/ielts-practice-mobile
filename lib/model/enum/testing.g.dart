// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Testing _$$_TestingFromJson(Map<String, dynamic> json) => _$_Testing(
      id: json['id'] as String,
      duration: const DurationConverter().fromJson(json['duration'] as String),
      date: DateTime.parse(json['date'] as String),
      speakingScores: (json['speakingScores'] as num?)?.toDouble(),
      userId: json['userId'] as String,
      managerId: json['managerId'] as String?,
      examId: json['examId'] as String?,
      trainingId: json['trainingId'] as String?,
    );

Map<String, dynamic> _$$_TestingToJson(_$_Testing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'duration': const DurationConverter().toJson(instance.duration),
      'date': instance.date.toIso8601String(),
      'speakingScores': instance.speakingScores,
      'userId': instance.userId,
      'managerId': instance.managerId,
      'examId': instance.examId,
      'trainingId': instance.trainingId,
    };
