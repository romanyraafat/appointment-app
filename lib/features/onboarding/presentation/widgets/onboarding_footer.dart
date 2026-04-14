import 'package:doc_doc_app/core/helper/extension.dart';
import 'package:doc_doc_app/core/routing/app_routes.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingFooter extends StatelessWidget {
  const OnboardingFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:20.h),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
            maxLines: 2,
            style: Styles.interRegulare10,
          ),
          SizedBox(height: 20.h,),
          CustomElevatedButton(
            title: "Get Started",
            style: Styles.interSemiBolde16,
            onPressed: () {
              context.pushNamed(AppRoutes.login);
            },
          ),
        ],
      ),
    );
  }
}
