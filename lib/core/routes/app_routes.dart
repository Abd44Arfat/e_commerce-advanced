
import 'package:ecommerce_advanced/core/common/screens/under_build_screen.dart';
import 'package:ecommerce_advanced/core/routes/base_routes.dart';
import 'package:ecommerce_advanced/features/auth/presentation/screens/login_screen.dart';
import 'package:ecommerce_advanced/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signUp = 'signUp';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(page:LoginScreen ());
      case signUp:
        return BaseRoute(page: SignUpScreen());
      default:
        return BaseRoute(page: PageUnderBuildScreen());
    }
  }
}
