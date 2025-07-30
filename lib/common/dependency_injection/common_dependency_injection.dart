import 'package:chasis_admin_dashboard/common/data/providers/session/session_provider_impl.dart';
import 'package:chasis_admin_dashboard/common/dependency_injection/dependency_injector.dart';
import 'package:chasis_admin_dashboard/common/domain/providers/session_provider.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/environment_values.dart';
import 'package:chasis_admin_dashboard/common/router/redirection_handlers/implementations/route_data_validation_redirection_handler.dart';
import 'package:chasis_admin_dashboard/common/router/redirection_handlers/redirection_handler_factory.dart';
import 'package:chasis_admin_dashboard/common/router/route_observer/app_route_observer.dart';
import 'package:chasis_admin_dashboard/dependency_injection/service_locator.dart';

final class CommonDependencyInjection extends DependencyInjector {
  final ServiceLocator serviceLocator;

  CommonDependencyInjection({required this.serviceLocator});

  @override
  void registerDependencies(EnvironmentValues environmentValues) {
    _registerRoutes();
    _registerInterceptors();
    _registerEnvironment();
    _registerDataSources();
    _registerRepositories();
    _registerProviders();
    _registerServices();
    _registerUseCases();
    _registerBlocs();
  }

  void _registerRoutes() {
    serviceLocator.registerFactory<AppRouteObserver>(() => AppRouteObserver());
    serviceLocator.registerFactory(
      () => RouteDataValidationRedirectionHandler.init(),
    );
    serviceLocator.registerFactory(
      () => RedirectionHandlerFactory(
        routeDataValidationRedirectionHandler: serviceLocator.get(),
      ),
    );
  }

  void _registerInterceptors() {}

  void _registerEnvironment() {}

  void _registerDataSources() {}

  void _registerRepositories() {}

  void _registerServices() {}

  void _registerProviders() {
    serviceLocator.registerLazySingleton<SessionProvider>(
      () => SessionProviderImpl(),
    );
  }

  void _registerUseCases() {}

  void _registerBlocs() {}
}
