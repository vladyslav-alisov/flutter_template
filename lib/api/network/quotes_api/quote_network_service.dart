import 'package:template/api/network/quotes_api/quote_network_entity.dart';
import 'package:template/api/network/quotes_api/quotes_client.dart';

class QuoteService {
  static final QuotesApiClient _quotesClient = QuotesApiClient.instance;

  static Future<QuoteNetworkEntity> getRandomQuote(String languageCode) async {
    var response = await _quotesClient.dio.get("/random/", queryParameters: {"language_code": languageCode});
    QuoteNetworkEntity result = QuoteNetworkEntity.fromJson(response.data);
    return result;
  }
}
