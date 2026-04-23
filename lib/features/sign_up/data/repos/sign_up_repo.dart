import 'package:doc_doc_app/core/networking/api_error_handeler.dart';
import 'package:doc_doc_app/core/networking/api_result.dart';
import 'package:doc_doc_app/core/networking/api_service.dart';
import 'package:doc_doc_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_doc_app/features/sign_up/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService apiService;

  SignUpRepo({required this.apiService});

  Future<ApiResult<SignUpResponse>> signUp({
    required SignUpRequestBody signUpRequestBody,
  }) async {
    try {
      var response = await apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
