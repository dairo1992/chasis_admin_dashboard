import 'package:chasis_admin_dashboard/common/utils/enums/display_platform.dart';

abstract class DisplayPlatformProvider {
  DisplayPlatform get current;

  bool get isWeb;

  bool get isApp;
  
}