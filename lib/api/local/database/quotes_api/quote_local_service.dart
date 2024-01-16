import 'package:isar/isar.dart';
import 'package:template/api/local/database/database_client.dart';
import 'package:template/api/local/database/quotes_api/quote_db_entity.dart';

class QuoteLocalService {
  final DatabaseClient _dbService = DatabaseClient.instance;

  Future<QuoteDBEntity?> getQuoteByLanguageCode(String languageCode) async {
    QuoteDBEntity? todayQuote =
        await _dbService.db.quoteDBEntitys.where().findFirst();
    return todayQuote;
  }

  Future<void> saveQuote(QuoteDBEntity quoteDBEntity) async {
    await _dbService.db.writeTxn(() async {
      await _dbService.db.quoteDBEntitys.put(quoteDBEntity);
    });
  }

  Future<void> deleteAllQuotes() async {
    await _dbService.db.writeTxn(() async {
      await _dbService.db.quoteDBEntitys.clear();
    });
  }
}
