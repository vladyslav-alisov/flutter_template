import 'package:flutter/material.dart';

class AppConfig {
  final bool isFirstLaunch;
  final Locale locale;
  final ThemeMode themeMode;

  AppConfig(this.isFirstLaunch, this.locale, this.themeMode);
}
