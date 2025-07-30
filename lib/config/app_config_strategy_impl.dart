import 'package:chasis_admin_dashboard/common/app/app_config_strategy.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/environment_values_provider.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/environment_values.dart';
import 'package:chasis_admin_dashboard/config/platform/platform.dart';
import 'package:chasis_admin_dashboard/dependency_injection/dependencies_injection.dart';
import 'package:flutter/cupertino.dart';

class AppConfigStrategyImpl extends AppConfigStrategy {
  EnvironmentValues get _environmentValues {
    return EnvironmentValuesProvider.get();
  }

  @override
  Future<void> start() async {
    WidgetsFlutterBinding.ensureInitialized();
    PlatformConfig.instance.start();

    setUpDependencies(_environmentValues);
  }

  @override
  void startUI() {
    PlatformConfig.instance.startUI(_environmentValues);
  }
}
