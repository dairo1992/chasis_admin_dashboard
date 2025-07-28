import 'package:chasis_admin_dashboard/common/enviromnents/values/client_keys_environment_values.dart';

final class PlatformClientKeysEnvironmentValues {
  final ClientKeysEnvironmentValues mobile;
  final ClientKeysEnvironmentValues web;

  PlatformClientKeysEnvironmentValues({
    required this.mobile,
    required this.web,
  });
}
