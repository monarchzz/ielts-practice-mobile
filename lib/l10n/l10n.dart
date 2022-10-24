// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

mixin L10nUtil {
  static Future<AppLocalizations> get l10n {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    final preferred = widgetsBinding.window.locales;
    const supported = AppLocalizations.supportedLocales;
    final locale = basicLocaleListResolution(preferred, supported);
    return AppLocalizations.delegate.load(locale);
  }
}
