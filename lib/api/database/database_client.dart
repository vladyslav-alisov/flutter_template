import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:template/api/database/app_config_api/app_config_dao.dart';
import 'package:template/api/database/app_config_api/app_config_entity.dart';
import 'package:template/api/database/app_info_api/app_info_dao.dart';
import 'package:template/api/database/app_info_api/app_info_entity.dart';

class DatabaseClient {
  static DatabaseClient? _instance;

  late final AppConfigDao appConfigDao;
  late final AppInfoDao appInfoDao;

  static DatabaseClient get instance => _instance != null ? _instance! : throw Exception("Initialize database first!");

  DatabaseClient(Isar isar) {
    appConfigDao = AppConfigDao(isar);
    appInfoDao = AppInfoDao(isar);
  }

  static Future<DatabaseClient> initLocalDatabase() async {
    if (_instance == null) {
      final dir = await getApplicationDocumentsDirectory();
      Isar isar = await Isar.open(
        [
          AppConfigEntitySchema,
          AppInfoEntitySchema,
        ],
        directory: dir.path,
      );
      _instance = DatabaseClient(isar);
    }
    return _instance!;
  }
}
