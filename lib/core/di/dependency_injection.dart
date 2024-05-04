import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:space_app/core/networking/api_service.dart';
import 'package:space_app/core/networking/dio_factory.dart';
import 'package:space_app/features/launches/data/repos/launch_repo.dart';
import 'package:space_app/features/launches/logic/cubit/launch_cubit.dart';
import 'package:space_app/features/crew/data/repos/crew_repo.dart';
import 'package:space_app/features/crew/logic/crew_cubit.dart';
import 'package:space_app/features/rockets/logic/all_rockets_cubit/rockets_cubit.dart';
import 'package:space_app/features/ships/data/repos/ships_repo.dart';
import 'package:space_app/features/ships/logic/ships_cubit.dart';

import '../../features/rockets/data/repos/rockets_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton(() => ApiService(dio));
  //Rockets
  getIt.registerLazySingleton(() => RocketsRepo(getIt()));
  getIt.registerLazySingleton(() => RocketsCubit(getIt()));

  // Launch
  getIt.registerLazySingleton(() => LaunchRepo(getIt()));
  getIt.registerLazySingleton(() => LaunchCubit(getIt()));

  // crew
  getIt.registerLazySingleton<CrewRepo>(() => CrewRepo(getIt()));
  getIt.registerFactory<CrewCubit>(() => CrewCubit(getIt()));

  // ships
  getIt.registerLazySingleton<ShipsCubit>(() => ShipsCubit(getIt()));
  getIt.registerLazySingleton<ShipsRepo>(() => ShipsRepo(getIt()));
}
