import 'package:doc_doc_app/core/helper/spaceing.dart';
import 'package:doc_doc_app/core/theme/app_colors.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/core/widgets/custom_elevated_button.dart';
import 'package:doc_doc_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController email;
  late TextEditingController password;
  final GlobalKey formKey = GlobalKey<FormState>();
  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.whiteColor,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Back", style: Styles.interBold24Blue),
                  verticalSpacing(10),
                  Text(
                    maxLines: 3,
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: Styles.interRegulare14Grey,
                  ),
                  verticalSpacing(20),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          controller: email,
                          hintText: "email",
                          align: true,
                        ),
                        verticalSpacing(30),
                        CustomTextFormField(
                          controller: password,
                          hintText: "password",
                          align: true,
                          isPassword: true,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password?",
                            style: Styles.interRegulare12Blue,
                          ),
                        ),
                        verticalSpacing(20),
                        CustomElevatedButton(
                          title: "Login",
                          style: Styles.interSemiBolde16White,
                          onPressed: () {},
                        ),
                        verticalSpacing(30),
                        Text(
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          "By logging, you agree to our  Terms & Conditions and PrivacyPolicy.",
                          style: Styles.interRegulare14Grey,
                        ),
                         verticalSpacing(9),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account yet",
                              style: Styles.interRegulare14Grey,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Sign Up",
                                style: Styles.interRegulare12Blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
