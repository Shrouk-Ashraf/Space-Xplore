import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/features/onboarding/ui/screens/onboarding_screen.dart';

void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen(),
      ),
    );
  }
}
