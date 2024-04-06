import 'package:flutter/material.dart';
import 'package:space_app/features/onboarding/views/onboarding_view.dart';

void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Space App",
      home: OnboardingView(),
    );
  }
}
