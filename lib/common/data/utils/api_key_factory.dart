import 'package:chasis_admin_dashboard/common/data/utils/api/api.dart';
import 'package:chasis_admin_dashboard/common/domain/providers/display/display_platform_provider.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/environment_values_provider.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/api_key_environment_values.dart';
import 'package:chasis_admin_dashboard/common/utils/enums/display_platform.dart';
import 'package:chasis_admin_dashboard/common/utils/strings.dart';


class ApiKeyFactory {
  const ApiKeyFactory({
    required this.environmentValuesProvider,
    required this.displayPlatformProvider,
  });

  final EnvironmentValuesProvider environmentValuesProvider;
  final DisplayPlatformProvider displayPlatformProvider;

  String get(API api) {
    final keys = _getByAPI(api: api);
    if(keys == null) return Strings.I.empty;
    return switch (displayPlatformProvider.current) {
      DisplayPlatform.app => throw UnimplementedError(),
      // TODO: Handle this case.
      DisplayPlatform.web => throw UnimplementedError(),
    };
  }

 
}
