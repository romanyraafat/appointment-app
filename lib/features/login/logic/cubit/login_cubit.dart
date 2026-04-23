import 'package:doc_doc_app/core/networking/api_result.dart';
import 'package:doc_doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_doc_app/features/login/data/repos/login_repo.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit({required this.loginRepo}) : super(LoginState.initial());
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> login({required LoginRequestBody loginRequestBody}) async {
    emit(LoginState.loading());
    final response = await loginRepo.login(loginRequestBody: loginRequestBody);
    response.when(
      success: (loginRequestBody) {
        emit(LoginState.success(response));
      },
      failure: (errorHandler) {
        emit(LoginState.failure(error: errorHandler.apiErrorModel.message));
      },
    );
  }
}
