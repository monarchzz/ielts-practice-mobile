import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';

enum TrainingLevel {
  @JsonValue('Easy')
  easy,

  @JsonValue('Medium')
  medium,

  @JsonValue('Hard')
  hard
}

extension TrainingLevelX on TrainingLevel {
  String getText(AppLocalizations l10n) {
    switch (this) {
      case TrainingLevel.easy:
        return l10n.easy;
      case TrainingLevel.medium:
        return l10n.medium;
      case TrainingLevel.hard:
        return l10n.hard;
    }
  }
}
