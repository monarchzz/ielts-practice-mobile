import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';

enum Gender {
  @JsonValue('Male')
  male,
  @JsonValue('Female')
  female
}

extension GenderX on Gender {
  String getName(AppLocalizations l10n) {
    switch (this) {
      case Gender.male:
        return l10n.male;
      case Gender.female:
        return l10n.female;
    }
  }
}
