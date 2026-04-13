import 'package:doc_doc_app/core/routing/app_router.dart';
import 'package:doc_doc_app/core/routing/app_routes.dart';
import 'package:doc_doc_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: AppTheme.appTheme,
        initialRoute: AppRoutes.onBoarding,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}