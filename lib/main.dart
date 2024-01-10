import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:template/api/local/database/app_config_api/app_config_db_service.dart';
import 'package:template/api/local/database/database_client.dart';
import 'package:template/api/local/storage/storage_client.dart';
import 'package:template/models/app_config/app_config.dart';
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

  final AppRepository appRepository = AppRepository(AppConfigDBService());

  AppConfig initAppConfig = await appRepository.getAppConfig();

  runApp(MyApp(initConfig: initAppConfig, appRepository: appRepository));
}
