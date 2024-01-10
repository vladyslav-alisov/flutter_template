import 'dart:io';

import 'package:flutter/material.dart';
import 'package:template/api/local/database/app_config_api/app_config_db_entity.dart';
import 'package:template/api/local/database/app_config_api/app_config_db_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/models/app_config/app_config.dart';
import 'package:template/models/app_config/app_config_mapper.dart';

class AppRepository {
  AppRepository(this._appConfigDBService);

  final AppConfigDBService _appConfigDBService;

  Future<AppConfig> updateAppConfig(AppConfig appConfig) async {
    AppConfigDBEntity appConfigDBEntity = AppConfigMapper.fromAppConfigToAppConfigDBEntity(appConfig);
    await _appConfigDBService.deleteAllConfigEntity();
    await _appConfigDBService.saveAppConfig(appConfigDBEntity);
    return appConfig;
  }

  Future<AppConfig> getAppConfig() async {
    AppConfigDBEntity? appConfigDBEntity = await _appConfigDBService.getAppConfig();
    if (appConfigDBEntity != null) {
      return AppConfigMapper.fromAppConfigDBEntityToAppConfig(appConfigDBEntity);
    } else {
      final String systemLang = Platform.localeName;
      Locale systemLocale = Locale(systemLang);
      bool isSupported = AppLocalizations.delegate.isSupported(systemLocale);
      Locale locale = isSupported ? systemLocale : AppLocalizations.supportedLocales.first;
      return AppConfig(true, locale, false);
    }
  }
}
