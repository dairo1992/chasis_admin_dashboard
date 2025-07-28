import 'package:chasis_admin_dashboard/common/router/redirection_handlers/implementations/redirection_handler_type.dart';
import 'package:chasis_admin_dashboard/common/router/redirection_handlers/implementations/route_data_validation_redirection_handler.dart';
import 'package:chasis_admin_dashboard/common/router/redirection_handlers/redirection_handler.dart';

class RedirectionHandlerFactory {
  final RouteDataValidationRedirectionHandler
  routeDataValidationRedirectionHandler;

  RedirectionHandlerFactory({
    required this.routeDataValidationRedirectionHandler,
  });

  RedirectionHandler get({required RedirectionHandlerType type}) {
    return switch (type) {
      RedirectionHandlerType.routeDataValidation =>
        routeDataValidationRedirectionHandler,
    };
  }
}
