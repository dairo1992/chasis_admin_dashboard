import 'package:chasis_admin_dashboard/features/authentication/domain/entities/user_entity.dart';

class AuthSession {
  final UserEntity user;
  final String accessToken;

  AuthSession({required this.user, required this.accessToken});
}
