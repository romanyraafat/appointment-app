import 'package:doc_doc_app/core/helper/spaceing.dart';
import 'package:doc_doc_app/core/theme/app_colors.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PasswordVallidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharachter;
  final bool hasNumber;
  final bool hasMinLenght;
  const PasswordVallidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharachter,
    required this.hasNumber,
    required this.hasMinLenght,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("at least one lower case character", hasLowerCase),
        verticalSpacing(2),
        buildValidationRow("at least one upper case character", hasUpperCase),
        verticalSpacing(2),
        buildValidationRow(
          "at least one special character",
          hasSpecialCharachter,
        ),
        verticalSpacing(2),
        buildValidationRow("at least one number", hasNumber),
        verticalSpacing(2),
        buildValidationRow("at least min lenght 8 characters", hasMinLenght),
        verticalSpacing(2),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidate) {
    return Row(
      children: [
        CircleAvatar(radius: 2.5, backgroundColor: AppColors.greyColor),
        horizontalSpacing(5),
        Text(
          text,
          style: Styles.interRegulare14Grey.copyWith(
            decoration: hasValidate ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidate ? AppColors.greyColor : Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}
