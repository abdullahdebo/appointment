import 'package:appointment/core/networking/api_service.dart';
import 'package:appointment/core/networking/dio_factory.dart';
import 'package:appointment/feature/login/data/models/repos/login_repo.dart';
import 'package:appointment/feature/login/logic/cubit/login_cubit.dart';
import 'package:appointment/feature/sign_up/data/repos/sign_up_repo.dart';
import 'package:appointment/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // sign up
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
