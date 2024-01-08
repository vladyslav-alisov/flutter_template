import 'package:isar/isar.dart';
import 'package:template/api/local/local_client.dart';
import 'package:template/api/local/quotes_api/quote_local_entity.dart';

class QuoteLocalService {
  final LocalDatabaseService _dbService = LocalDatabaseService.instance;

  Future<QuoteLocalEntity?> getQuoteByLanguageCode(String languageCode) async {
    QuoteLocalEntity? todayQuote =
        await _dbService.db.quoteLocalEntitys.filter().languageCodeEqualTo(languageCode).findFirst();
    return todayQuote;
  }

  Future<void> saveQuote(QuoteLocalEntity quoteDBEntity) async {
    await _dbService.db.writeTxn(() async {
      await _dbService.db.quoteLocalEntitys.put(quoteDBEntity);
    });
  }

  Future<void> deleteAllQuotes() async {
    await _dbService.db.writeTxn(() async {
      await _dbService.db.quoteLocalEntitys.clear();
    });
  }
}
