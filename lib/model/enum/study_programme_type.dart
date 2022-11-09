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

extension StudyProgrammeTypeX on StudyProgrammeType {
  String getImageUrl() {
    switch (this) {
      case StudyProgrammeType.target4To6:
        return 'assets/full-1.webp';
      case StudyProgrammeType.target6To8:
        return 'assets/full-2.webp';
      case StudyProgrammeType.target8To9:
        return 'assets/full-3.webp';
      case StudyProgrammeType.listeningSection:
        return 'assets/listening.webp';
      case StudyProgrammeType.speakingSection:
        return 'assets/speaking.webp';
    }
  }

  String getText() {
    switch (this) {
      case StudyProgrammeType.target4To6:
        return '4 to 6 points';
      case StudyProgrammeType.target6To8:
        return '6 to 8 points';
      case StudyProgrammeType.target8To9:
        return '8 to 9 points';
      case StudyProgrammeType.listeningSection:
        return 'Listening';
      case StudyProgrammeType.speakingSection:
        return 'Speaking';
    }
  }
}
