import 'package:doc_doc_app/core/helper/spaceing.dart';
import 'package:doc_doc_app/core/theme/app_colors.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/core/widgets/custom_elevated_button.dart';
import 'package:doc_doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc_app/features/login/presentation/widgets/email_password.dart';
import 'package:doc_doc_app/features/login/presentation/widgets/have_account.dart';
import 'package:doc_doc_app/features/login/presentation/widgets/login_bloc_listner.dart';
import 'package:doc_doc_app/features/login/presentation/widgets/terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                  Column(
                    children: [
                      EmailPassword(),
                      verticalSpacing(30),
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
                        onPressed: () {
                          validateThenDoLogin(context);
                        },
                      ),
                      verticalSpacing(30),
                      TermsConditions(),
                      verticalSpacing(9),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Haveaccount(),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign Up",
                              style: Styles.interRegulare12Blue,
                            ),
                          ),
                          LoginBlocListner(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login(
        loginRequestBody: LoginRequestBody(
          email: context.read<LoginCubit>().email.text,
          password: context.read<LoginCubit>().password.text,
        ),
      );
    }
  }
}
