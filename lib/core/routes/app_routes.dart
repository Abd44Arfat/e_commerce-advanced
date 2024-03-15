
import 'package:ecommerce_advanced/core/common/screens/under_build_screen.dart';
import 'package:ecommerce_advanced/core/di/injection_container.dart';
import 'package:ecommerce_advanced/core/routes/base_routes.dart';
import 'package:ecommerce_advanced/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_advanced/features/auth/presentation/screens/login_screen.dart';
import 'package:ecommerce_advanced/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signUp = 'signUp';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(page: BlocProvider(
          create: (context) => sl<AuthBloc>(),
          child: const LoginScreen(),
        ));
      case signUp:
        return BaseRoute(page: SignUpScreen());
      default:
        return BaseRoute(page: PageUnderBuildScreen());
    }
  }
}
