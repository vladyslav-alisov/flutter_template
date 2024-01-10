import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:template/api/local/database/app_config_api/app_config_db_entity.dart';

import 'quotes_api/quote_db_entity.dart';

class DatabaseClient {
  static DatabaseClient? _instance;

  final Isar _isar;
  Isar get db => _isar;

  static DatabaseClient get instance => _instance != null ? _instance! : throw Exception("Initialize database first!");

  DatabaseClient(this._isar);

  static Future<DatabaseClient> initLocalDatabase() async {
    if (_instance == null) {
      final dir = await getApplicationDocumentsDirectory();
      Isar isar = await Isar.open(
        [QuoteDBEntitySchema, AppConfigDBEntitySchema],
        directory: dir.path,
      );
      _instance = DatabaseClient(isar);
    }
    return _instance!;
  }
}
