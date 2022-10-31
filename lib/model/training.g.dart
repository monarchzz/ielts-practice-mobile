// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Training _$$_TrainingFromJson(Map<String, dynamic> json) => _$_Training(
      id: json['id'] as String,
      name: json['name'] as String,
      trainingSession:
          $enumDecode(_$TrainingSessionEnumMap, json['trainingSession']),
      type: $enumDecode(_$TrainingTypeEnumMap, json['type']),
      level: $enumDecode(_$TrainingLevelEnumMap, json['level']),
      status: $enumDecode(_$TrainingStatusEnumMap, json['status']),
      forExamOnly: json['forExamOnly'] as bool,
      audio: json['audio'] == null
          ? null
          : Attachment.fromJson(json['audio'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : Attachment.fromJson(json['image'] as Map<String, dynamic>),
      managerId: json['managerId'] as String,
      examId: json['examId'] as String?,
      studyProgrammeSectionId: json['studyProgrammeSectionId'] as String?,
    );

Map<String, dynamic> _$$_TrainingToJson(_$_Training instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'trainingSession': _$TrainingSessionEnumMap[instance.trainingSession]!,
      'type': _$TrainingTypeEnumMap[instance.type]!,
      'level': _$TrainingLevelEnumMap[instance.level]!,
      'status': _$TrainingStatusEnumMap[instance.status]!,
      'forExamOnly': instance.forExamOnly,
      'audio': instance.audio,
      'image': instance.image,
      'managerId': instance.managerId,
      'examId': instance.examId,
      'studyProgrammeSectionId': instance.studyProgrammeSectionId,
    };

const _$TrainingSessionEnumMap = {
  TrainingSession.listening: 'Listening',
  TrainingSession.speaking: 'Speaking',
};

const _$TrainingTypeEnumMap = {
  TrainingType.listeningSection1: 'ListeningSection1',
  TrainingType.listeningSection2: 'ListeningSection2',
  TrainingType.listeningSection3: 'ListeningSection3',
  TrainingType.listeningSection4: 'ListeningSection4',
  TrainingType.speakingPart1: 'SpeakingPart1',
  TrainingType.speakingPart2: 'SpeakingPart2',
  TrainingType.speakingPart3: 'SpeakingPart3',
};

const _$TrainingLevelEnumMap = {
  TrainingLevel.easy: 'Easy',
  TrainingLevel.medium: 'Medium',
  TrainingLevel.hard: 'Hard',
};

const _$TrainingStatusEnumMap = {
  TrainingStatus.pending: 'Pending',
  TrainingStatus.approved: 'Approved',
  TrainingStatus.cancelled: 'Cancelled',
};
