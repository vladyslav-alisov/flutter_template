class AppConfig {
  static AppConfig? _instance;

  static AppConfig get instance =>
      _instance != null ? _instance! : throw Exception("AppConfig must be initialized first!");

  AppConfig._({required this.quoteApiHost, required this.quoteBaseUrl, required this.quoteApiKey});

  final String quoteBaseUrl;
  final String quoteApiKey;
  final String quoteApiHost;

  static AppConfig init({required String quoteApiHost, required String quoteApiKey, required String quoteBaseUrl}) {
    if (_instance != null) {
      _instance = AppConfig._(quoteApiHost: quoteApiHost, quoteBaseUrl: quoteBaseUrl, quoteApiKey: quoteApiKey);
    }
    return _instance!;
  }
}
