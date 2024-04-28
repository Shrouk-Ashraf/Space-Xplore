import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:space_app/core/networking/api_services.dart';
import 'package:space_app/features/ships/data/repos/ships_repo_imple.dart';
import 'package:space_app/features/ships/logic/ships/ships_cubit.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<ShipsCubit>(() => ShipsCubit(getIt()));
  getIt.registerLazySingleton<ShipsRepoImple>(() => ShipsRepoImple(getIt()));
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(Dio()));
}
