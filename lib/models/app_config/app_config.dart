import 'package:flutter/material.dart';

class AppConfig {
  final Locale locale;
  final bool isFirstLaunch;
  final ThemeMode themeMode;

  AppConfig(this.isFirstLaunch, this.locale, this.themeMode);
}
