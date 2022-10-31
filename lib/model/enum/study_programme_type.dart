import 'package:freezed_annotation/freezed_annotation.dart';

enum StudyProgrammeType {
  @JsonValue('Target4To6')
  target4To6,

  @JsonValue('Target6To8')
  target6To8,

  @JsonValue('Target8To9')
  target8To9,

  @JsonValue('ListeningSection')
  listeningSection,

  @JsonValue('SpeakingSection')
  speakingSection,
}
