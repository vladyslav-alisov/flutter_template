import 'package:flutter/material.dart';

class AppConfig {
  final Locale locale;
  final bool isFirstLaunch;
  final bool isDarkTheme;

  AppConfig(this.isFirstLaunch, this.locale, this.isDarkTheme);
}
