import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/di/injection.dart';
import 'package:space_app/core/networking/api_services.dart';
import 'package:space_app/features/ships/data/repos/ships_repo_imple.dart';
import 'package:space_app/features/ships/logic/ships/ships_cubit.dart';
import 'package:space_app/features/ships/ui/screens/ships_view.dart';

void main() {
  initGetIt();
  Dio dio = Dio();
  ApiServices apiServices = ApiServices(dio);
  ShipsRepoImple imple = ShipsRepoImple(apiServices);
  imple.getAllShips();
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Space App",
        home: BlocProvider(
          create: (context) => getIt<ShipsCubit>()..getAllShipsData(),
          child: ShipsScreen(),
        ),
      ),
    );
  }
}
