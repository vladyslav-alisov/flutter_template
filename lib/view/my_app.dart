import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:template/models/app_config/app_config.dart';
import 'package:template/models/app_info/app_info.dart';
import 'package:template/providers/app_provider.dart';
import 'package:template/repositories/app_repository.dart';
import 'home_screen/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    required this.initConfig,
    required this.appInfo,
    required this.appRepository,
  });

  final AppConfig initConfig;
  final AppInfo appInfo;
  final AppRepository appRepository;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppProvider>(
          create: (_) => AppProvider(
            widget.initConfig,
            widget.appInfo,
            widget.appRepository,
          ),
        ),
      ],
      child: Consumer<AppProvider>(
        builder: (context, appConfigProvider, child) => MaterialApp(
          locale: appConfigProvider.appLocale,
          theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
          darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
          themeMode: appConfigProvider.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
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
