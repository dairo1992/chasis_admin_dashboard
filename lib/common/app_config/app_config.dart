import 'package:chasis_admin_dashboard/common/app_config/app_config_strategy.dart';

final class AppConfig {
  static late AppConfigStrategy instance;

  static void setStrategy(AppConfigStrategy strategy) => instance = strategy;
}
