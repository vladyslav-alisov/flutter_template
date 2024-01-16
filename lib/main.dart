import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:template/api/local/database/app_config_api/app_config_db_service.dart';
import 'package:template/api/local/database/app_info_api/app_info_db_service.dart';
import 'package:template/api/local/database/database_client.dart';
import 'package:template/api/local/storage/storage_client.dart';
import 'package:template/models/app_config/app_config.dart';
import 'package:template/models/app_info/app_info.dart';
import 'package:template/repositories/app_repository.dart';
import 'package:template/utils/app_env.dart';
import 'view/my_app.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await StorageClient.initLocalStorage();
  await DatabaseClient.initLocalDatabase();
  AppEnv.init(
    quoteApiHost: dotenv.env['QUOTE_API_HOST'] ?? "",
    quoteBaseUrl: dotenv.env['QUOTE_BASE_URL'] ?? "",
    quoteApiKey: dotenv.env['QUOTE_API_KEY'] ?? "",
  );

  final AppRepository appRepository = AppRepository(AppConfigDBService(), AppInfoDBService());

  AppConfig initAppConfig = await appRepository.getAppConfig();
  AppInfo appInfo = await appRepository.getAppInfo();

  runApp(MyApp(initConfig: initAppConfig, appRepository: appRepository, appInfo: appInfo));
}
