import 'package:doc_doc_app/core/helper/font_weight_helper.dart';
import 'package:doc_doc_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static final TextStyle interBold32Blue = GoogleFonts.inter(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryColorBlue,
  );
  static final TextStyle interBold24Blue = GoogleFonts.inter(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryColorBlue,
  );
  static final TextStyle interRegulare10Grey = GoogleFonts.inter(
    fontSize: 10.sp,
    color:AppColors.greyColor,
  );
  static final TextStyle interRegulare12Blue = GoogleFonts.inter(
    fontSize: 12.sp,
    color:AppColors.primaryColorBlue,
  );
  static final TextStyle interRegulare14Grey = GoogleFonts.inter(
    fontSize: 14.sp,
    color:AppColors.greyColor,
  );
  static final TextStyle interMedium14HintColor = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color:AppColors.hintColor,
  );
  static final TextStyle interSemiBolde16White = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.whiteColor
  );
}
