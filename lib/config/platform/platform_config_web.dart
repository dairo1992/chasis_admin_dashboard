// ignore_for_file: avoid_web_libraries_in_flutter
// ignore: deprecated_member_use
import 'dart:js';
import 'package:flutter/rendering.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:chasis_admin_dashboard/common/enviromnents/values/environment_values.dart';
import 'package:chasis_admin_dashboard/config/platform/platform.dart';

class PlatformConfigImpl extends PlatformConfig {
  @override
  void start() {
    setUrlStrategy(NoHistoryUrlStrategy());
  }

  @override
  void startUI(EnvironmentValues environmentValues) {
    try {
      _initializeRUM(environmentValues);
      SemanticsBinding.instance.ensureSemantics();
    } catch (_) {}
  }

  void _initializeRUM(EnvironmentValues environmentValues) {
    final supaBaseParams = environmentValues.supabase;
    final rumInitializeParams = [supaBaseParams.url, supaBaseParams.anonKey];

    context.callMethod('RUMinitializer', rumInitializeParams);
  }
}

class NoHistoryUrlStrategy extends PathUrlStrategy {
  @override
  void pushState(Object? state, String title, String url) =>
      replaceState(state, title, url);
}
