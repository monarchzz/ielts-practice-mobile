import 'package:freezed_annotation/freezed_annotation.dart';

enum TrainingType {
  @JsonValue('ListeningSection1')
  listeningSection1,

  @JsonValue('ListeningSection2')
  listeningSection2,

  @JsonValue('ListeningSection3')
  listeningSection3,

  @JsonValue('ListeningSection4')
  listeningSection4,

  @JsonValue('SpeakingPart1')
  speakingPart1,

  @JsonValue('SpeakingPart2')
  speakingPart2,

  @JsonValue('SpeakingPart3')
  speakingPart3,
}
