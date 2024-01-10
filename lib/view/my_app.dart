import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:template/main.dart';
import 'package:template/models/app_config/app_config.dart';
import 'package:template/providers/app_config_provider.dart';
import 'package:template/repositories/app_repository.dart';
import 'home_screen/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    required this.initConfig,
    required this.appRepository,
  });

  final AppConfig initConfig;
  final AppRepository appRepository;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppConfigProvider>(
          create: (_) => AppConfigProvider(
            widget.initConfig,
            widget.appRepository,
          ),
        ),
      ],
      child: Consumer<AppConfigProvider>(
        builder: (context, appConfigProvider, child) => MaterialApp(
          title: 'Flutter Demo',
          locale: appConfigProvider.appConfig.locale,
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English
            Locale('es'), // Spanish
          ],
        ),
      ),
    );
  }
}
