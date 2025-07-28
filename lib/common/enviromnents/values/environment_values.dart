import 'package:chasis_admin_dashboard/common/enviromnents/values/server_connection_environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/supabase_environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/token_sync_values.dart';

class EnvironmentValues {
  final ServerConnectionEnvironmentValues serverConnection;
  final TokenSyncValues tokenSync;
  final SupabaseEnvironmentValues supabase;

  const EnvironmentValues({
    required this.serverConnection,
    required this.tokenSync,
    required this.supabase,
  });
}
