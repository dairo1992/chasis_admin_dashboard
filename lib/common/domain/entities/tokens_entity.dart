import 'dart:convert';

import 'package:chasis_admin_dashboard/common/domain/entities/basic_token_entity.dart';
import 'package:chasis_admin_dashboard/common/utils/encodable.dart';
import 'package:chasis_admin_dashboard/common/utils/extensions/map_extension.dart';
import 'package:chasis_admin_dashboard/common/utils/strings.dart';

final class TokenEntity implements Encodable, BasicTokensEntity {
  factory TokenEntity.fromMap(Map<String, dynamic> map) {
    return TokenEntity(
      scope: map.getOrNull(_scopeKey) ?? Strings.I.empty,
      expiresIn: map.getOrNull(_expiresInKey) ?? 0,
      refresExpiredIn: map.getOrNull(_refresExpiredInKey) ?? 0,
      tokenType: map.getOrNull(_tokenTypeKey) ?? Strings.I.empty,
      sessionState: map.getOrNull(_sessionStateKey) ?? Strings.I.empty,
      accessToken: map.getOrNull(_accessTokenKey) ?? Strings.I.empty,
      refreshToken: map.getOrNull(_refreshTokenKey) ?? Strings.I.empty,
    );
  }

  TokenEntity({
    required this.scope,
    required this.expiresIn,
    required this.refresExpiredIn,
    required this.tokenType,
    required this.sessionState,
    required this.accessToken,
    required this.refreshToken,
  });

  final String scope;
  final int expiresIn;
  final int refresExpiredIn;
  final String tokenType;
  final String sessionState;

  @override
  final String accessToken;

  @override
  final String refreshToken;

  @override
  String toJson() => json.encode(toMap());

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      _scopeKey: scope,
      _expiresInKey: expiresIn,
      _refresExpiredInKey: refresExpiredIn,
      _tokenTypeKey: tokenType,
      _sessionStateKey: sessionState,
      _accessTokenKey: accessToken,
      _refreshTokenKey: refreshToken,
    };
  }

  TokenEntity copyWith({
    String? scope,
    int? expiresIn,
    int? refresExpiredIn,
    String? tokenType,
    String? sessionState,
    String? accessToken,
    String? refreshToken,
  }) {
    return TokenEntity(
      scope: scope ?? this.scope,
      expiresIn: expiresIn ?? this.expiresIn,
      refresExpiredIn: refresExpiredIn ?? this.refresExpiredIn,
      tokenType: tokenType ?? this.tokenType,
      sessionState: sessionState ?? this.sessionState,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  //Coding Keys
  static const String _scopeKey = 'scope';
  static const String _expiresInKey = 'expires_in';
  static const String _refresExpiredInKey = 'refresh_expires_in';
  static const String _tokenTypeKey = 'token_type';
  static const String _sessionStateKey = 'session_state';
  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
}
