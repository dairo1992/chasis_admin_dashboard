import 'package:chasis_admin_dashboard/common/domain/providers/display/display_platform_provider.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/environment_values_provider.dart';

class HeadersBuilder {
  final EnvironmentValuesProvider _environmentValuesProvider;
  final DisplayPlatformProvider _displayPlatformProvider;
  
  final APIKeyFactory _apiKeyFactory;
  final JSON _header;
  final HeadersType _type;
}
