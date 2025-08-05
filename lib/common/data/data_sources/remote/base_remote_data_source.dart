import 'package:chasis_admin_dashboard/common/domain/providers/session_provider.dart';
import 'package:chasis_admin_dashboard/common/domain/providers/tokens_provider.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/environment_values_provider.dart';
import 'package:flutter/foundation.dart';

abstract class BaseRemoteDataSource {
  BaseRemoteDataSource({
    required this.environmentValuesProvider,
    required this.sessionProvider,
    required this.tokensProvider,
    required this.headersBuilder,
    required this.httpModule,
  });

  @protected
  final EnvironmentValuesProvider environmentValuesProvider;

  @protected
  final SessionProvider sessionProvider;

  @protected
  final TokensProvider tokensProvider;

  @protected
  final HeadersBuilder headersBuilder;

  @protected
  final HttpModule httpModule;
}
