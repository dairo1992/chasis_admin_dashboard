import 'package:chasis_admin_dashboard/common/router/base_route.dart';
import 'package:chasis_admin_dashboard/common/utils/constants.dart';

enum Routes implements BaseRoute {
  root(name: Constants.rootScreenRoute),
  authentication(name: Constants.authenticationRouteName),
  home(name: Constants.homeRouteName);

  const Routes({required this.name})
    : path = '${Constants.routePathSeparator}$name';
  @override
  final String name;

  @override
  final String path;

  String add(BaseRoute subRoute) {
    return '$path${Constants.routePathSeparator}${subRoute.name}';
  }
}
