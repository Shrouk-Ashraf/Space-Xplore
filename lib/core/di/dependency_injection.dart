import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:space_app/core/networking/api_service.dart';
import 'package:space_app/core/networking/dio_factory.dart';
import 'package:space_app/features/launches/data/repos/launch_repo.dart';
import 'package:space_app/features/launches/logic/cubit/launch_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton(() => ApiService(dio));

  //Launch
  getIt.registerLazySingleton(() => LaunchRepo(getIt()));
  getIt.registerLazySingleton(() => LaunchCubit(getIt()));
}
