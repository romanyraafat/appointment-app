import 'package:dio/dio.dart';
import 'package:doc_doc_app/core/networking/api_constants.dart';
import 'package:doc_doc_app/features/auth/login/data/models/login_request_body.dart';
import 'package:doc_doc_app/features/auth/login/data/models/login_response.dart';
import 'package:doc_doc_app/features/auth/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_doc_app/features/auth/sign_up/data/models/sign_up_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndPoint)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signUpEndPoint)
  Future<SignUpResponse> signUp(@Body() SignUpRequestBody loginRequestBody);
}
