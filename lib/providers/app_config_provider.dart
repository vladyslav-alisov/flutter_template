import 'package:flutter/material.dart';
import 'package:template/models/app_config/app_config.dart';
import 'package:template/repositories/app_repository.dart';

class AppConfigProvider with ChangeNotifier {
  AppConfigProvider(AppConfig initConfig, this._appRepository) {
    _appConfig = initConfig;
  }

  final AppRepository _appRepository;

  late AppConfig _appConfig;

  AppConfig get appConfig => _appConfig;

  Future<void> updateLocale(Locale locale) async {
    AppConfig newAppConfig = AppConfig(_appConfig.isFirstLaunch, locale, _appConfig.isDarkTheme);
    AppConfig updatedAppConfig = await _appRepository.updateAppConfig(newAppConfig);
    _appConfig = updatedAppConfig;
    notifyListeners();
  }
}
