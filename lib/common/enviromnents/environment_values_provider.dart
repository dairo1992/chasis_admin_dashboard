import 'package:chasis_admin_dashboard/common/enviromnents/values/environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/supabase_environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/token_sync_values.dart';

class EnvironmentValuesProvider {
  const EnvironmentValuesProvider._();

  static EnvironmentValuesProvider get instance => _instance;

  static const EnvironmentValuesProvider _instance =
      EnvironmentValuesProvider._();

  EnvironmentValues get() {
    return EnvironmentValues(
      supabase: _getSupabaseValues(),
      tokenSync: _getTokenSyncValues(),
    );
  }

  _getTokenSyncValues() {
    return const TokenSyncValues(
      tokenSync: String.fromEnvironment('TOKEN_SYNC'),
      endFlowKeyOne: String.fromEnvironment('TOKEN_SYNC_END_OF_FLOW_KEY_ONE'),
      endFlowKeyTwo: String.fromEnvironment('TOKEN_SYNC_END_OF_FLOW_KEY_TWO'),
    );
  }

  _getSupabaseValues() {
    return const SupabaseEnvironmentValues(
      anonKey: String.fromEnvironment('SUPABASE_ANON_KEY'),
      url: String.fromEnvironment('SUPABASE_URL'),
    );
  }
}
