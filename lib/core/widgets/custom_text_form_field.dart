import 'package:doc_doc_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final int? maxLines;
  final bool isPassword;
  final TextStyle? hintStyle;
  final bool? hintColor;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final bool? align;
  final bool? isEnabled;
  final Color? fillColor;
  final String? Function(String?)? validator;

  const CustomTextFormField( {
    this.hintColor,
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.validator,
    this.align = false, this.hintStyle, this.fillColor, this.isEnabled, this.maxLines,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = true;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: TextFormField(
        
        maxLines: widget.maxLines ?? 1,
        textAlign: widget.align == true ? TextAlign.start : TextAlign.end,
        controller: widget.controller,
        obscureText: isObscure,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: widget.hintStyle ?? GoogleFonts.cairo(
            fontSize: 17.sp,
            color: AppColors.hintColor ,
          ),
          prefixIconColor: AppColors.hintColor,
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: Icon(
                    isObscure ?   Icons.visibility_off : Icons.visibility,
                  ),
                )
              : widget.prefixIcon != null
              ? Icon(widget.prefixIcon)
              : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide:  BorderSide(
              color: AppColors.primaryColorBlue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide:  BorderSide(color:AppColors.greyBorderColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(color: Colors.red, width: 2),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(color: Colors.red, width: 2),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 14.h,
          ),
        ),
      ),
    );
  }
}
