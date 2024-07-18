import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppEnv {
  static AppEnv? _instance;

  static AppEnv get instance =>
      _instance != null ? _instance! : throw Exception("AppConfig must be initialized first!");

  AppEnv._({
    required this.quoteApiHost,
    required this.quoteBaseUrl,
    required this.quoteApiKey,
  });

  final String quoteBaseUrl;
  final String quoteApiKey;
  final String quoteApiHost;

  static Future<AppEnv> init({String? fileName}) async {
    await dotenv.load(fileName: fileName ?? ".env");
    _instance ??= AppEnv._(
      quoteApiHost: dotenv.env['QUOTE_API_HOST'] ?? "",
      quoteBaseUrl: dotenv.env['QUOTE_BASE_URL'] ?? "",
      quoteApiKey: dotenv.env['QUOTE_API_KEY'] ?? "",
    );
    return _instance!;
  }
}
