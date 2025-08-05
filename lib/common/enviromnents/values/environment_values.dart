import 'package:chasis_admin_dashboard/common/enviromnents/values/supabase_environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/token_sync_values.dart';

class EnvironmentValues {
  final SupabaseEnvironmentValues supabase;
  final TokenSyncValues tokenSync;

  const EnvironmentValues({
    required this.supabase,
    required this.tokenSync,
  });
}
