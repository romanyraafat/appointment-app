import 'package:dio/dio.dart';
import 'package:doc_doc_app/core/networking/api_service.dart';
import 'package:doc_doc_app/core/networking/dio_factory.dart';
import 'package:doc_doc_app/features/login/data/repos/login_repo.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doc_doc_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  //*? dio => apiService => loginRepo => loginCubit
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<Dio>(() => dio);
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(apiService: getIt<ApiService>()),
  );
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(loginRepo: getIt<LoginRepo>()),
  );
  getIt.registerLazySingleton<SignUpRepo>(
    () => SignUpRepo(apiService: getIt<ApiService>()),
  );
  getIt.registerFactory<SignUpCubit>(
    () => SignUpCubit( getIt<SignUpRepo>()),
  );
}
