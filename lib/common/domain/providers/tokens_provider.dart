import 'package:chasis_admin_dashboard/common/domain/entities/enums/authentication_origin.dart';
import 'package:chasis_admin_dashboard/common/domain/entities/enums/authentication_scope.dart';
import 'package:chasis_admin_dashboard/common/domain/entities/tokens_entity.dart';
import 'package:chasis_admin_dashboard/common/utils/enums/jwt_validation_result.dart';

abstract class TokensProvider {
  Future<void> synchonize({
    required AuthenticationScope scope,
    required AuthenticationOrigin origin,
  });

  Future<TokenEntity> get({
    required AuthenticationScope scope,
    required AuthenticationOrigin origin,
  });

  Future<TokenEntity> refresh({
    required AuthenticationScope scope,
    required AuthenticationOrigin origin,
  });

  Future<JwtValidationResult> validate({
    required AuthenticationScope scope,
    required AuthenticationOrigin origin,
  });

  Future<void> remove({
    required AuthenticationScope scope,
    required AuthenticationOrigin origin,
  });
}
