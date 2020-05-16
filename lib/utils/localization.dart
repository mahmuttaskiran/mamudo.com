import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale locale;
  final Map<String, String> map;

  AppLocalizations(this.locale, this.map);

  static Future<AppLocalizations> load(Locale locale) async {
    assert(locale != null);
    final str = await rootBundle
        .loadString("assets/localizations/${locale.languageCode}.json");
    assert(str != null && str.isNotEmpty);
    return AppLocalizations(locale, Map<String, String>.from(jsonDecode(str)));
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of(context, AppLocalizations);
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ["en", "tr"].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
