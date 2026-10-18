import 'package:flutter/cupertino.dart';
import 'package:seevo/core/l10n/app_localizations.dart';

extension Extensions on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}