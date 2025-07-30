import 'package:chasis_admin_dashboard/common/enviromnents/values/environment_values.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/supabase_environment_values.dart';

final class EnvironmentValuesProvider {
  static EnvironmentValues get() {
    return const EnvironmentValues(
      urlPublishWeb: String.fromEnvironment('URL_PUBLISH_WEB'),
      supabase: SupabaseEnvironmentValues(
        anonKey: String.fromEnvironment('SUPABASE_ANON_KEY'),
        url: String.fromEnvironment('SUPABASE_URL'),
      ),
    );
  }
}
