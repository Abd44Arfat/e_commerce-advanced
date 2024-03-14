import 'package:ecommerce_advanced/core/app/test1_screen.dart';
import 'package:ecommerce_advanced/core/app/test2_screen.dart';
import 'package:ecommerce_advanced/core/common/screens/under_build_screen.dart';
import 'package:ecommerce_advanced/core/routes/base_routes.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String test1 = 'test1';
  static const String test2 = 'test2';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case test1:
        return BaseRoute(page: Test1());
      case test2:
        return BaseRoute(page: Test2());
      default:
        return BaseRoute(page: PageUnderBuildScreen());
    }
  }
}
