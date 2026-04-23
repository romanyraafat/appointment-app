import 'package:doc_doc_app/core/helper/app_regex.dart';
import 'package:doc_doc_app/core/helper/spaceing.dart';
import 'package:doc_doc_app/core/widgets/custom_text_form_field.dart';
import 'package:doc_doc_app/features/login/presentation/widgets/password_vallidation.dart';
import 'package:doc_doc_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            align: true,
            hintText: 'Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid name';
              }
            },
            controller: context.read<SignUpCubit>().nameController,
          ),
          verticalSpacing(18),
          CustomTextFormField(
            align: true,
            hintText: 'Phone number',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
            controller: context.read<SignUpCubit>().phoneController,
          ),
          verticalSpacing(18),
          CustomTextFormField(
            align: true,
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<SignUpCubit>().emailController,
          ),
          verticalSpacing(18),
          CustomTextFormField(
            align: true,
            controller: context.read<SignUpCubit>().passwordController,
            hintText: 'Password',
            isPassword: isPasswordObscureText,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpacing(18),
          CustomTextFormField(
            align: true,
            controller: context
                .read<SignUpCubit>()
                .passwordConfirmationController,
            hintText: 'Password Confirmation',
            isPassword: isPasswordConfirmationObscureText,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpacing(24),
          PasswordVallidation(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharachter: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLenght: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
