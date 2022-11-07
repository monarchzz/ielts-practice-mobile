import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';

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

extension TrainingTypeX on TrainingType {
  String getTitle(AppLocalizations l10n) {
    switch (this) {
      case TrainingType.listeningSection1:
        return l10n.listeningSection1;
      case TrainingType.listeningSection2:
        return l10n.listeningSection2;
      case TrainingType.listeningSection3:
        return l10n.listeningSection3;
      case TrainingType.listeningSection4:
        return l10n.listeningSection4;
      case TrainingType.speakingPart1:
        return l10n.speakingPart1;
      case TrainingType.speakingPart2:
        return l10n.speakingPart2;
      case TrainingType.speakingPart3:
        return l10n.speakingPart3;
    }
  }
}
