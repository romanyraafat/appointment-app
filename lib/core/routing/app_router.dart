import 'package:doc_doc_app/core/routing/app_routes.dart';
import 'package:doc_doc_app/features/login/presentation/views/login.dart';
import 'package:doc_doc_app/features/onboarding/presentation/views/on_boarding.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) {
            return Login();
          },
        );
      case AppRoutes.onBoarding:
        return MaterialPageRoute(
          builder: (_) {
            return OnBoarding();
          },
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Text("no found route");
          },
        );
    }
  }
}
