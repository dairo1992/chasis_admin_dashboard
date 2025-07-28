import 'dart:async';
import 'package:chasis_admin_dashboard/common/utils/extensions/redirection_handler_extension.dart';
import 'package:flutter/material.dart';
import 'package:chasis_admin_dashboard/common/router/redirection_handlers/redirection_handler.dart';
import 'package:chasis_admin_dashboard/common/router/redirection_handlers/redirection_handler_data.dart';
import 'package:go_router/go_router.dart';

class RouteDataValidationRedirectionHandler implements RedirectionHandler {
  factory RouteDataValidationRedirectionHandler.init() {
    return RouteDataValidationRedirectionHandler._();
  }

  RouteDataValidationRedirectionHandler._({this.data});

  @override
  final RedirectionHandlerData? data;

  @override
  FutureOr<String?> onRedirect(BuildContext context, GoRouterState state) {
    return (state.extra == null) ? redirectionRoute : null;
  }

  @override
  RedirectionHandler setAdditionalData(RedirectionHandlerData data) {
    return RouteDataValidationRedirectionHandler._(data: data);
  }
}
