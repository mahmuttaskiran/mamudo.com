import 'package:flutter/material.dart';

class GlobalAppState {
  static final GlobalAppState instance = GlobalAppState._();

  GlobalAppState._();

  factory GlobalAppState() => instance;
  Locale _appLocale = Locale("en");
  ThemeMode _themeMode = ThemeMode.dark;

  Function appStateListener;

  Locale get appLocale => _appLocale;

  ThemeMode get themeMode => _themeMode;

  set locale(Locale v) {
    _appLocale = v;
    if (appStateListener != null) {
      appStateListener();
    }
  }

  set themeMode(ThemeMode mode) {
    _themeMode = mode;
    if (appStateListener != null) {
      appStateListener();
    }
  }

  String get opponentLocaleName {
    if (appLocale.languageCode == "tr") {
      return "English";
    } else {
      return "Turkish";
    }
  }

  Locale get opponentLocale {
    if (appLocale.languageCode == "tr") {
      return Locale("en");
    } else {
      return Locale("tr");
    }
  }

  ThemeMode get opponentThemeMode {
    if (_themeMode == ThemeMode.dark) {
      return ThemeMode.light;
    } else {
      return ThemeMode.dark;
    }
  }

  String get opponentThemeModeString {
    if (_themeMode == ThemeMode.dark) {
      return "Light";
    } else {
      return "Dark";
    }
  }
}
