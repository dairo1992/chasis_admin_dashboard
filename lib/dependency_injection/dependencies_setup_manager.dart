import 'package:chasis_admin_dashboard/common/domain/providers/session_provider.dart';

final class DependenciesSetupManager {
  final SessionProvider sessionProvider;

  DependenciesSetupManager({required this.sessionProvider});

  Future<void> start() async {
    await sessionProvider.start();
  }
}
