import 'package:flutter/cupertino.dart';

class LanguageSensitiveString {
  late Map<Locale, String?> translations;

  LanguageSensitiveString._() {
    translations = {};
  }

  factory LanguageSensitiveString.en(String text) {
    final lss = LanguageSensitiveString._();
    lss.translations[Locale("en")] = text;
    return lss;
  }

  factory LanguageSensitiveString.enTr(String? en, String? tr) {
    final lss = LanguageSensitiveString._();
    lss.translations[Locale("en")] = en;
    lss.translations[Locale("tr")] = tr;
    return lss;
  }

  String getValue(Locale locale) {
    return translations[locale] ?? "Localization not found for $locale.";
  }

  String getEnValue() {
    return getValue(Locale("en"));
  }

  String get(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return getValue(locale);
  }
}
