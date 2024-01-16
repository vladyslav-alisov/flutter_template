import 'package:flutter/material.dart';
import 'package:template/models/app_config/app_config.dart';
import 'package:template/models/app_info/app_info.dart';
import 'package:template/repositories/app_repository.dart';

class AppProvider with ChangeNotifier {
  AppProvider(this._appConfig, this._appInfo, this._appRepository);

  final AppRepository _appRepository;

  AppConfig _appConfig;

  Locale get appLocale => _appConfig.locale;
  bool get isFirstLaunch => _appConfig.isFirstLaunch;
  bool get isDarkTheme => _appConfig.isDarkTheme;

  final AppInfo _appInfo;

  AppInfo get appInfo => _appInfo;

  void setLocale(Locale locale) {
    AppConfig newAppConfig = AppConfig(_appConfig.isFirstLaunch, locale, _appConfig.isDarkTheme);
    _appConfig = newAppConfig;
    notifyListeners();
  }

  Future<void> saveAppConfig({Locale? locale, bool? isFirstLaunch, bool? isDarkTheme}) async {
    AppConfig newAppConfig = AppConfig(
      isFirstLaunch ?? _appConfig.isFirstLaunch,
      locale ?? _appConfig.locale,
      isDarkTheme ?? _appConfig.isDarkTheme,
    );
    AppConfig updatedAppConfig = await _appRepository.updateAppConfig(newAppConfig);
    _appConfig = updatedAppConfig;
    notifyListeners();
  }

  Future<void> saveLocaleConfig(Locale locale) async {
    AppConfig newAppConfig = AppConfig(_appConfig.isFirstLaunch, locale, _appConfig.isDarkTheme);
    AppConfig updatedAppConfig = await _appRepository.updateAppConfig(newAppConfig);
    _appConfig = updatedAppConfig;
    notifyListeners();
  }

  Future<void> saveFirstLaunchConfig(bool isFirstLaunch) async {
    AppConfig newAppConfig = AppConfig(isFirstLaunch, _appConfig.locale, _appConfig.isDarkTheme);
    AppConfig updatedAppConfig = await _appRepository.updateAppConfig(newAppConfig);
    _appConfig = updatedAppConfig;
  }

  Future<void> saveIsDarkThemeConfig(bool isDarkTheme) async {
    AppConfig newAppConfig = AppConfig(_appConfig.isFirstLaunch, _appConfig.locale, isDarkTheme);
    AppConfig updatedAppConfig = await _appRepository.updateAppConfig(newAppConfig);
    _appConfig = updatedAppConfig;
    notifyListeners();
  }
}
