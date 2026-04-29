import 'package:doc_doc_app/core/helper/app_regex.dart';
import 'package:doc_doc_app/core/helper/spaceing.dart';
import 'package:doc_doc_app/core/widgets/custom_text_form_field.dart';
import 'package:doc_doc_app/features/auth/login/presentation/widgets/password_vallidation.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailPassword extends StatefulWidget {
  const EmailPassword({super.key});

  @override
  State<EmailPassword> createState() => _EmailPasswordState();
}

class _EmailPasswordState extends State<EmailPassword> {
  late TextEditingController email;
  late TextEditingController password;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharachter = false;
  bool hasNumber = false;
  bool hasMinLenght = false;

  @override
  void dispose() {
    password.dispose();
    email.dispose();
    super.dispose();
  }

  @override
  void initState() {
    email = context.read<LoginCubit>().email;
    password = context.read<LoginCubit>().password;
    setUpPasswrodControllerLisnter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(email.text)) {
                return "please enter a vaild email address..";
              }
            },
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "please enter password..";
              }
            },
          ),
          verticalSpacing(20),
          PasswordVallidation(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharachter: hasSpecialCharachter,
            hasNumber: hasNumber,
            hasMinLenght: hasMinLenght,
          ),
        ],
      ),
    );
  }

  void setUpPasswrodControllerLisnter() {
    password.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(password.text);
        hasUpperCase = AppRegex.hasUpperCase(password.text);
        hasSpecialCharachter = AppRegex.hasSpecialCharacter(password.text);
        hasNumber = AppRegex.hasNumber(password.text);
        hasMinLenght = AppRegex.hasMinLength(password.text);
      });
    });
  }
}
