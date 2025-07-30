import 'package:chasis_admin_dashboard/common/enviromnents/values/supabase_environment_values.dart';

final class EnvironmentValues {
  final SupabaseEnvironmentValues supabase;
  final String urlPublishWeb;

  const EnvironmentValues({
    required this.supabase,
    required this.urlPublishWeb,
  });
}
