import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:template/utils/app_config.dart';

import 'view/my_app.dart';

void main() async {
  await dotenv.load(fileName: ".env.production");
  AppConfig.init(
      quoteApiHost: dotenv.env['QUOTE_API_HOST'] ?? "",
      quoteBaseUrl: dotenv.env['QUOTE_BASE_URL'] ?? "",
      quoteApiKey: dotenv.env['QUOTE_API_KEY'] ?? "");
  runApp(const MyApp());
}
