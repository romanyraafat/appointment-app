import 'package:doc_doc_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static final TextStyle interBold32 = GoogleFonts.inter(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColorBlue,
  );
  static final TextStyle interRegulare10 = GoogleFonts.inter(
    fontSize: 10.sp,
    color:AppColors.greyColor,
  );
  static final TextStyle interSemiBolde16 = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor
  );
}
