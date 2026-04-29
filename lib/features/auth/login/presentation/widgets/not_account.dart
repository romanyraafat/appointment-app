import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NotAccount extends StatelessWidget {
  const NotAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Don't have an account yet",
      style: Styles.interRegulare14Grey,
    );
  }
}