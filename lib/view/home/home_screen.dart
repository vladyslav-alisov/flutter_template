import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:template/providers/app_provider.dart';
import 'package:template/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        actions: [
          IconButton(
            onPressed: () => context.push(AppRoutes.settings.path),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Consumer<AppProvider>(
          builder: (context, appProv, child) => Text(
            "AppName: ${appProv.appInfo.appName}\n"
            "PackageName: ${appProv.appInfo.packageName}\n"
            "Version: ${appProv.appInfo.version}\n"
            "BuildNumber: ${appProv.appInfo.buildNumber}\n"
            "BuildSignature: ${appProv.appInfo.buildSignature}\n"
            "LastUpdated: ${appProv.appInfo.lastUpdated}\n",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
