class AppEnv {
  static AppEnv? _instance;

  static AppEnv get instance =>
      _instance != null ? _instance! : throw Exception("AppConfig must be initialized first!");

  AppEnv._({required this.quoteApiHost, required this.quoteBaseUrl, required this.quoteApiKey});

  final String quoteBaseUrl;
  final String quoteApiKey;
  final String quoteApiHost;

  static AppEnv init({required String quoteApiHost, required String quoteApiKey, required String quoteBaseUrl}) {
    _instance ??= AppEnv._(quoteApiHost: quoteApiHost, quoteBaseUrl: quoteBaseUrl, quoteApiKey: quoteApiKey);
    return _instance!;
  }
}
