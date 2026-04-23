import 'package:doc_doc_app/core/di/di.dart';
import 'package:doc_doc_app/core/routing/app_routes.dart';
import 'package:doc_doc_app/features/home/presentation/views/home_view.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc_app/features/login/presentation/views/login.dart';
import 'package:doc_doc_app/features/onboarding/presentation/views/on_boarding.dart';
import 'package:doc_doc_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doc_doc_app/features/sign_up/presentation/views/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider<LoginCubit>(
              create: (context) => getIt<LoginCubit>(),
              child: Login(),
            );
          },
        );
      case AppRoutes.onBoarding:
        return MaterialPageRoute(
          builder: (_) {
            return OnBoarding();
          },
        );
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) {
            return HomeView();
          },
        );
      case AppRoutes.signUp:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
               create: (context) => getIt<SignUpCubit>(),
              child: SignupScreen(),
            );
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
