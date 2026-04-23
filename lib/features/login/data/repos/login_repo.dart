import 'package:doc_doc_app/core/networking/api_error_handeler.dart';
import 'package:doc_doc_app/core/networking/api_result.dart';
import 'package:doc_doc_app/core/networking/api_service.dart';
import 'package:doc_doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_doc_app/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo({required this.apiService});

  Future<ApiResult<LoginResponse>> login({
    required LoginRequestBody loginRequestBody,
  }) async {
    try {
      var response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
