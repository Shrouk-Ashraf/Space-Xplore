import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/di/dependency_injection.dart';
import 'package:space_app/core/routing/app_router.dart';
import 'package:space_app/features/onboarding/ui/screens/onboarding_screen.dart';

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
    return const ScreenUtilInit(
      designSize: Size(375, 840),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen(),
      ),
    );
  }
}
