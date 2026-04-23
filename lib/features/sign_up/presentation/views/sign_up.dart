import 'package:doc_doc_app/core/helper/extension.dart';
import 'package:doc_doc_app/core/helper/spaceing.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/core/widgets/custom_elevated_button.dart';
import 'package:doc_doc_app/features/login/presentation/widgets/terms_condition.dart';
import 'package:doc_doc_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doc_doc_app/features/sign_up/presentation/widgets/sign_up_bloc_listner.dart';
import 'package:doc_doc_app/features/sign_up/presentation/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create Account', style: Styles.interBold24Blue),
                verticalSpacing(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: Styles.interRegulare14Grey,
                ),
                verticalSpacing(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpacing(40),
                    CustomElevatedButton(
                      title: "Create Account",
                      style: Styles.interSemiBolde16White,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpacing(16),
                    const TermsConditions(),

                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text("already have an account.. login"),
                    ),

                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().signUp();
    }
  }
}
