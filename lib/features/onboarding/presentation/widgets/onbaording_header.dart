import 'package:doc_doc_app/core/utils/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnbaordingHeader extends StatelessWidget {
  const OnbaordingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         SvgPicture.asset(MyImages.assetsImagesLogo, semanticsLabel: 'Dart Logo'),
         SizedBox(width: 9.w,),
         SvgPicture.asset(MyImages.assetsImagesDocdoc, semanticsLabel: 'Dart Logo'),
      ],
    );
  }
}