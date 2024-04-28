import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/di/dependency_injection.dart';
import 'package:space_app/core/routing/app_router.dart';
import 'package:space_app/core/routing/routes.dart';

void main() {
  setupGetIt();
  runApp(SpaceApp(
    appRouter: AppRouter(),
  ));
}

class SpaceApp extends StatelessWidget {
  final AppRouter appRouter;
  const SpaceApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
