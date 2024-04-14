import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/features/ships/ui/ships_view.dart';

import 'package:space_app/features/onboarding/views/onboarding_screen.dart';


void main() {
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
        home: ShipsView(),
      ),

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Space App",
      home: OnboardingScreen(),
    );
  }
}
