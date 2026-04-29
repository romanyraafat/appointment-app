import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      maxLines: 2,
      "By logging, you agree to our  Terms & Conditions and PrivacyPolicy.",
      style: Styles.interRegulare14Grey,
    );
  }
}
