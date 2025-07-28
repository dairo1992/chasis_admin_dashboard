import 'package:chasis_admin_dashboard/app.dart';
import 'package:chasis_admin_dashboard/common/app/app_config.dart';
import 'package:chasis_admin_dashboard/config/app_config_strategy_impl.dart';
import 'package:flutter/material.dart';

Future<void> start() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.setStrategy(AppConfigStrategyImpl());
  await AppConfig.instance.start();
  runApp(const App());
  AppConfig.instance.startUI();
}
