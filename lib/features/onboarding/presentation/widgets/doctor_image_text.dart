import 'package:doc_doc_app/core/utils/my_images.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageText extends StatelessWidget {
  const DoctorImageText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset(MyImages.assetsImagesBackgroundLogo),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14 ,0.4 ]
            ),
          ),
          child: Image.asset(MyImages.assetsImagesDoctorPg),
        ),
        Positioned(
          bottom: 1.h,
          left: 20.w,
          right: 20.w,
          child: Text(
            "Best Doctor\nAppointment App",
            textAlign: TextAlign.center,
            style: Styles.interBold32Blue,
          ),
        ),
      ],
    );
  }
}
