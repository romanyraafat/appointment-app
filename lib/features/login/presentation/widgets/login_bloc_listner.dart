import 'package:doc_doc_app/core/helper/extension.dart';
import 'package:doc_doc_app/core/routing/app_routes.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: CircularProgressIndicator(color: Colors.blue),
                );
              },
            );
          },
          success: (linearBorder) {
            context.pop();
            context.pushReplacementNamed(AppRoutes.onHome);
          },
          failure: (error) {
             context.pop();
            setUpErrorState(context, error);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }

  void setUpErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(error),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text("Got it "),
          ),
        ],
      ),
    );
  }
}
