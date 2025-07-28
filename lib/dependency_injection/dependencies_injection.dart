import 'package:chasis_admin_dashboard/common/dependency_injection/dependencies_setup_manager.dart';
import 'package:chasis_admin_dashboard/common/dependency_injection/dependency_injector.dart';
import 'package:chasis_admin_dashboard/common/dependency_injection/service_locator.dart';
import 'package:chasis_admin_dashboard/common/domain/providers/session_provider.dart';
import 'package:chasis_admin_dashboard/common/enviromnents/values/environment_values.dart';

DependenciesSetupManager setUpDependencies(
  EnvironmentValues environmentValues,
) {
  final serviceLocator = ServiceLocator.instance;

  final List<DependencyInjector> injectors = [];

  for (var item in injectors) {
    item.registerDependencies(environmentValues);
  }

  return DependenciesSetupManager(
    sessionProvider: serviceLocator.get<SessionProvider>(),
  );
}
