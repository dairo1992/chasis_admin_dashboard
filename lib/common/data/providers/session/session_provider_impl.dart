import 'package:chasis_admin_dashboard/common/domain/providers/session_provider.dart';
import 'package:chasis_admin_dashboard/features/authentication/domain/entities/auth_session_entity.dart';

class SessionProviderImpl implements SessionProvider {
  AuthSession? _session;

  @override
  Future<void> start() async {
    _session = null;
  }

  @override
  Future<void> clearSession() async {
    _session = null;
  }

  @override
  Future<AuthSession> getSession() async {
    if (_session == null) {
      throw Exception('Session not found');
    }
    return _session!;
  }

  @override
  Future<void> saveSession(AuthSession session) async {
    _session = session;
  }

  @override
  bool get hasActiveSession => _session != null ? true : false;
}
