import 'package:chasis_admin_dashboard/common/enviromnents/values/api_key_environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/client_keys_environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/platform_client_keys_environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/server_connection_environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/supabase_environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/token_sync_values.dart';

class EnvironmentValuesProvider {
  const EnvironmentValuesProvider._();

  static EnvironmentValuesProvider get instance => _instance;

  static const EnvironmentValuesProvider _instance =
      EnvironmentValuesProvider._();

  EnvironmentValues get() {
    final environmentValues = EnvironmentValues(
      serverConnection: _getServerConnection(),
      tokenSync: _getTokenSync(),
      supabase: getSupabase(),
    );
    return environmentValues;
  }

  _getServerConnection() {
    return ServerConnectionEnvironmentValues(
      appVersionAuthClientKeys: PlatformClientKeysEnvironmentValues(
        mobile: ClientKeysEnvironmentValues(
          clientId: String.fromEnvironment('APP_VERSION_CLIENT_ID_MOBILE'),
          clientSecret: String.fromEnvironment(
            'APP_VERSION_CLIENT_SECRET_MOBILE',
          ),
        ),
        web: ClientKeysEnvironmentValues(
          clientSecret: String.fromEnvironment('APP_VERSION_CLIENT_SECRET_WEB'),
          clientId: String.fromEnvironment('APP_VERSION_CLIENT_ID_WEB'),
        ),
      ),
      // securityAuthClientKeys: PlatformClientKeysEnvironmentValues(
      //   mobile: ClientKeysEnvironmentValues(
      //     clientId: String.fromEnvironment('SECURITY_CLIENT_ID_MOBILE'),
      //     clientSecret: String.fromEnvironment('SECURITY_CLIENT_SECRET_MOBILE'),
      //   ),
      //   web: ClientKeysEnvironmentValues(
      //     clientSecret: String.fromEnvironment('SECURITY_CLIENT_SECRET_WEB'),
      //     clientId: String.fromEnvironment('SECURITY_CLIENT_ID_WEB'),
      //   ),
      // ),
      // seedTokenAuthClientKeys: PlatformClientKeysEnvironmentValues(
      //   mobile: ClientKeysEnvironmentValues(
      //     clientId: String.fromEnvironment('SEED_TOKEN_CLIENT_ID_MOBILE'),
      //     clientSecret: String.fromEnvironment(
      //       'SEED_TOKEN_CLIENT_SECRET_MOBILE',
      //     ),
      //   ),
      //   web: ClientKeysEnvironmentValues(
      //     clientSecret: String.fromEnvironment('SEED_TOKEN_CLIENT_SECRET_WEB'),
      //     clientId: String.fromEnvironment('SEED_TOKEN_CLIENT_ID_WEB'),
      //   ),
      // ),
      // loginWithPasseordClientkeys: PlatformClientKeysEnvironmentValues(
      //   mobile: ClientKeysEnvironmentValues(
      //     clientId: String.fromEnvironment(
      //       'LOGIN_WITH_PASSWORD_CLIENT_ID_MOBILE',
      //     ),
      //     clientSecret: String.fromEnvironment(
      //       'LOGIN_WITH_PASSWORD_CLIENT_SECRET_MOBILE',
      //     ),
      //   ),
      //   web: ClientKeysEnvironmentValues(
      //     clientSecret: String.fromEnvironment(
      //       'LOGIN_WITH_PASSWORD_CLIENT_SECRET_WEB',
      //     ),
      //     clientId: String.fromEnvironment('LOGIN_WITH_PASSWORD_CLIENT_ID_WEB'),
      //   ),
      // ),
      authenticatedZoneClientKeys: PlatformClientKeysEnvironmentValues(
        mobile: ClientKeysEnvironmentValues(
          clientId: String.fromEnvironment(
            'AUTHENTICATED_ZONE_CLIENT_ID_MOBILE',
          ),
          clientSecret: String.fromEnvironment(
            'AUTHENTICATED_ZONE_CLIENT_SECRET_MOBILE',
          ),
        ),
        web: ClientKeysEnvironmentValues(
          clientSecret: String.fromEnvironment(
            'AUTHENTICATED_ZONE_CLIENT_SECRET_WEB',
          ),
          clientId: String.fromEnvironment('AUTHENTICATED_ZONE_CLIENT_ID_WEB'),
        ),
      ),
      utilitiesClientKeys: PlatformClientKeysEnvironmentValues(
        mobile: ClientKeysEnvironmentValues(
          clientId: String.fromEnvironment('UTILITIES_CLIENT_ID_MOBILE'),
          clientSecret: String.fromEnvironment(
            'UTILITIES_CLIENT_SECRET_MOBILE',
          ),
        ),
        web: ClientKeysEnvironmentValues(
          clientSecret: String.fromEnvironment('UTILITIES_CLIENT_SECRET_WEB'),
          clientId: String.fromEnvironment('UTILITIES_CLIENT_ID_WEB'),
        ),
      ),
      // biometricsClientKeys: PlatformClientKeysEnvironmentValues(
      //   mobile: ClientKeysEnvironmentValues(
      //     clientId: String.fromEnvironment('BIOMETRICS_CLIENT_ID_MOBILE'),
      //     clientSecret: String.fromEnvironment(
      //       'BIOMETRICS_CLIENT_SECRET_MOBILE',
      //     ),
      //   ),
      //   web: ClientKeysEnvironmentValues(
      //     clientSecret: String.fromEnvironment('BIOMETRICS_CLIENT_SECRET_WEB'),
      //     clientId: String.fromEnvironment('BIOMETRICS_CLIENT_ID_WEB'),
      //   ),
      // ),
      clientsClientKeys: PlatformClientKeysEnvironmentValues(
        mobile: ClientKeysEnvironmentValues(
          clientId: String.fromEnvironment('CLIENTS_CLIENT_ID_MOBILE'),
          clientSecret: String.fromEnvironment('CLIENTS_CLIENT_SECRET_MOBILE'),
        ),
        web: ClientKeysEnvironmentValues(
          clientSecret: String.fromEnvironment('CLIENTS_CLIENT_SECRET_WEB'),
          clientId: String.fromEnvironment('CLIENTS_CLIENT_ID_WEB'),
        ),
      ),
      // solicitationsClientKeys: PlatformClientKeysEnvironmentValues(
      //   mobile: ClientKeysEnvironmentValues(
      //     clientId: String.fromEnvironment('SOLICITATIONS_CLIENT_ID_MOBILE'),
      //     clientSecret: String.fromEnvironment(
      //       'SOLICITATIONS_CLIENT_SECRET_MOBILE',
      //     ),
      //   ),
      //   web: ClientKeysEnvironmentValues(
      //     clientSecret: String.fromEnvironment(
      //       'SOLICITATIONS_CLIENT_SECRET_WEB',
      //     ),
      //     clientId: String.fromEnvironment('SOLICITATIONS_CLIENT_ID_WEB'),
      //   ),
      // ),
      notificationsClientKeys: PlatformClientKeysEnvironmentValues(
        mobile: ClientKeysEnvironmentValues(
          clientId: String.fromEnvironment('NOTIFICATIONS_CLIENT_ID_MOBILE'),
          clientSecret: String.fromEnvironment(
            'NOTIFICATIONS_CLIENT_SECRET_MOBILE',
          ),
        ),
        web: ClientKeysEnvironmentValues(
          clientSecret: String.fromEnvironment(
            'NOTIFICATIONS_CLIENT_SECRET_WEB',
          ),
          clientId: String.fromEnvironment('NOTIFICATIONS_CLIENT_ID_WEB'),
        ),
      ),
      // offersClientKeys: PlatformClientKeysEnvironmentValues(
      //   mobile: ClientKeysEnvironmentValues(
      //     clientId: String.fromEnvironment('OFFERS_CLIENT_ID_MOBILE'),
      //     clientSecret: String.fromEnvironment('OFFERS_CLIENT_SECRET_MOBILE'),
      //   ),
      //   web: ClientKeysEnvironmentValues(
      //     clientSecret: String.fromEnvironment('OFFERS_CLIENT_SECRET_WEB'),
      //     clientId: String.fromEnvironment('OFFERS_CLIENT_ID_WEB'),
      //   ),
      // ),
      regularBaseUrl: String.fromEnvironment('REGULAR_BASE_URL'),
      publicIpServiceUrl: String.fromEnvironment('PUBLIC_IP_SERVICE_URL'),
      urlPublishWeb: String.fromEnvironment('URL_PUBLISH_WEB'),
      authenticationAPIKeys: ApiKeyEnvironmentValues(
        mobile: String.fromEnvironment('AUTHENTICATION_API_KEY_MOBILE'),
        web: String.fromEnvironment('AUTHENTICATION_API_KEY_WEB'),
      ),
      securityAPIKeys: ApiKeyEnvironmentValues(
        mobile: String.fromEnvironment('SECURITY_API_KEY_MOBILE'),
        web: String.fromEnvironment('SECURITY_API_KEY_WEB'),
      ),
      clientsAPIKeys: ApiKeyEnvironmentValues(
        mobile: String.fromEnvironment('CLIENTS_API_KEY_MOBILE'),
        web: String.fromEnvironment('CLIENTS_API_KEY_WEB'),
      ),
      offersAPIKeys: ApiKeyEnvironmentValues(
        mobile: String.fromEnvironment('OFFERS_API_KEY_MOBILE'),
        web: String.fromEnvironment('OFFERS_API_KEY_WEB'),
      ),
      solicitationsAPIKeys: ApiKeyEnvironmentValues(
        mobile: String.fromEnvironment('SOLICITATIONS_API_KEY_MOBILE'),
        web: String.fromEnvironment('SOLICITATIONS_API_KEY_WEB'),
      ),
      utilitiesAPIKeys: ApiKeyEnvironmentValues(
        mobile: String.fromEnvironment('UTILITIES_API_KEY_MOBILE'),
        web: String.fromEnvironment('UTILITIES_API_KEY_WEB'),
      ),
      biometricsAPIKeys: ApiKeyEnvironmentValues(
        mobile: String.fromEnvironment('BIOMETRICS_API_KEY_MOBILE'),
        web: String.fromEnvironment('BIOMETRICS_API_KEY_WEB'),
      ),
      notificationsAPIKeys: ApiKeyEnvironmentValues(
        mobile: String.fromEnvironment('NOTIFICATIONS_API_KEY_MOBILE'),
        web: String.fromEnvironment('NOTIFICATIONS_API_KEY_WEB'),
      ),
    );
  }

  _getTokenSync() {
    return TokenSyncValues(
      tokenSync: String.fromEnvironment('TOKEN_SYNC'),
      endFlowKeyOne: String.fromEnvironment('TOKEN_SYNC_END_FLOW_KEY_ONE'),
      endFlowKeyTwo: String.fromEnvironment('TOKEN_SYNC_END_FLOW_KEY_TWO'),
    );
  }

  getSupabase() {
    return SupabaseEnvironmentValues(
      anonKey: String.fromEnvironment('SUPABASE_ANON_KEY'),
      url: String.fromEnvironment('SUPABASE_URL'),
    );
  }
}
