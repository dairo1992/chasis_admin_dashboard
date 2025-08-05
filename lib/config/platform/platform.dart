import 'package:chasis_admin_dashboard/common/enviromnents/values/environment_values.dart';
import 'package:chasis_admin_dashboard/config/platform/platform_config_app.dart'
if(dart.library.html) 'package:chasis_admin_dashboard/config/platform/platform_config_web.dart';

abstract class PlatformConfig {
  static PlatformConfig instance = PlatformConfigImpl() as PlatformConfig;

  void start();
  
  void startUI(EnvironmentValues environmentValues);
}
