import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/routing/app_router.dart';
import 'package:space_app/core/routing/routes.dart';

void main() {
  runApp(
    SpaceApp(
      appRouter: AppRouter(),
    ),
  );
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 840),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
