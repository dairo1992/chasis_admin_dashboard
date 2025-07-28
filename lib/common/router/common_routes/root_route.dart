import 'package:chasis_admin_dashboard/common/presentation/pages/root_page.dart';
import 'package:chasis_admin_dashboard/common/router/app_route.dart';
import 'package:chasis_admin_dashboard/common/router/routes.dart';

class RootRoute extends AppRoute {
  RootRoute()
    : super(route: Routes.root, useNamedRoute: false, page: const RootPage());
}
