import 'package:doc_doc_app/features/onboarding/presentation/widgets/doctor_image_text.dart';
import 'package:doc_doc_app/features/onboarding/presentation/widgets/onbaording_header.dart';
import 'package:doc_doc_app/features/onboarding/presentation/widgets/onboarding_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w , vertical: 20),
            child: Column(
              children: [
                OnbaordingHeader(),
                SizedBox(height: 30.h),
                DoctorImageText(),
                OnboardingFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
