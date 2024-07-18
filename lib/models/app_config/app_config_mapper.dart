import 'package:flutter/material.dart';
import 'package:template/api/database/app_config_api/app_config_entity.dart';
import 'package:template/models/app_config/app_config.dart';

class AppConfigMapper {
  AppConfigEntity modelToEntity(AppConfig appConfig) {
    return AppConfigEntity(
      appConfig.locale.languageCode,
      appConfig.locale.countryCode,
      appConfig.isFirstLaunch,
      appConfig.themeMode,
    );
  }

  AppConfig entityToModel(AppConfigEntity appConfigEntity) {
    Locale locale = Locale(
      appConfigEntity.languageCode,
      appConfigEntity.countryCode,
    );

    return AppConfig(
      appConfigEntity.isFirstLaunch,
      locale,
      appConfigEntity.themeMode,
    );
  }
}
