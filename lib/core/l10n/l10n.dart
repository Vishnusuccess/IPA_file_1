import 'package:flutter/widgets.dart';
import 'package:trueme/gen_l10n/app_localizations.dart';

export 'package:trueme/gen_l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get strings => AppLocalizations.of(this);
}
