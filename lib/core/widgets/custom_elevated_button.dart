import 'package:doc_doc_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final TextStyle style;
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.title,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 52.h),
        backgroundColor: AppColors.primaryColorBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16.r),
        ),
      ),
      child: Text(title, style: style),
    );
  }
}
