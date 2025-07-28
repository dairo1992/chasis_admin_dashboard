import 'package:chasis_admin_dashboard/features/authentication/domain/entities/auth_session_entity.dart';

abstract class SessionProvider {
  Future<void> start();
  Future<AuthSession> getSession();
  Future<void> saveSession(AuthSession session);
  Future<void> clearSession();
  bool get hasActiveSession;
}
