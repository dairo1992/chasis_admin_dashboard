import 'package:chasis_admin_dashboard/common/router/app_router.dart';
import 'package:chasis_admin_dashboard/common/utils/strings.dart';
import 'package:desing_system/tokens/ds_theme.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final themeData = DSTheme.lightTheme;
    return MaterialApp.router(
      routerConfig: AppRouter.builRouter(),
      debugShowCheckedModeBanner: false,
      title: Strings.I.appName,
      theme: themeData,
    );
  }
}
