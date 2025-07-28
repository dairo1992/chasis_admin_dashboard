import 'package:chasis_admin_dashboard/common/enviromnents/values/api_key_environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/platform_client_keys_environment_values.dart';

final class ServerConnectionEnvironmentValues {
  final PlatformClientKeysEnvironmentValues appVersionAuthClientKeys;
  //final PlatformClientKeysEnvironmentValues securityAuthClientKeys;
  //final PlatformClientKeysEnvironmentValues seedTokenAuthClientKeys;
  //final PlatformClientKeysEnvironmentValues loginWithPasseordClientkeys;
  final PlatformClientKeysEnvironmentValues authenticatedZoneClientKeys;
  final PlatformClientKeysEnvironmentValues utilitiesClientKeys;
  //final PlatformClientKeysEnvironmentValues biometricsClientKeys;
  final PlatformClientKeysEnvironmentValues clientsClientKeys;
  //final PlatformClientKeysEnvironmentValues solicitationsClientKeys;
  final PlatformClientKeysEnvironmentValues notificationsClientKeys;
  //final PlatformClientKeysEnvironmentValues offersClientKeys;

  final String regularBaseUrl;
  final String publicIpServiceUrl;
  final String urlPublishWeb;

  final ApiKeyEnvironmentValues authenticationAPIKeys;
  final ApiKeyEnvironmentValues securityAPIKeys;
  final ApiKeyEnvironmentValues clientsAPIKeys;
  final ApiKeyEnvironmentValues offersAPIKeys;
  final ApiKeyEnvironmentValues solicitationsAPIKeys;
  final ApiKeyEnvironmentValues utilitiesAPIKeys;
  final ApiKeyEnvironmentValues biometricsAPIKeys;
  final ApiKeyEnvironmentValues notificationsAPIKeys;

  ServerConnectionEnvironmentValues({
    required this.appVersionAuthClientKeys,
    //required this.securityAuthClientKeys,
    //required this.seedTokenAuthClientKeys,
    //required this.loginWithPasseordClientkeys,
    required this.authenticatedZoneClientKeys,
    required this.utilitiesClientKeys,
    //required this.biometricsClientKeys,
    required this.clientsClientKeys,
    //required this.solicitationsClientKeys,
    required this.notificationsClientKeys,
    //required this.offersClientKeys,
    required this.regularBaseUrl,
    required this.publicIpServiceUrl,
    required this.urlPublishWeb,
    required this.authenticationAPIKeys,
    required this.securityAPIKeys,
    required this.clientsAPIKeys,
    required this.offersAPIKeys,
    required this.solicitationsAPIKeys,
    required this.utilitiesAPIKeys,
    required this.biometricsAPIKeys,
    required this.notificationsAPIKeys,
  });
}
