import 'package:isar/isar.dart';
import 'package:template/api/local/quotes_api/quote_local_entity.dart';
import 'package:path_provider/path_provider.dart';

class LocalDatabaseService {
  static LocalDatabaseService? _instance;

  final Isar _isar;
  Isar get db => _isar;

  static LocalDatabaseService get instance =>
      _instance != null ? _instance! : throw Exception("Initialize database first!");

  LocalDatabaseService(this._isar);

  static Future<LocalDatabaseService> initLocalDatabase() async {
    if (_instance == null) {
      final dir = await getApplicationDocumentsDirectory();

      Isar isar = await Isar.open(
        [QuoteLocalEntitySchema],
        directory: dir.path,
      );
      return _instance ??= LocalDatabaseService(isar);
    } else {
      return _instance!;
    }
  }
}
