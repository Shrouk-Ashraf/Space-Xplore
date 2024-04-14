import 'package:flutter/material.dart';

import '../data/on_boarding_model_items.dart';
import '../widgets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBody(
        items: onBoardingItems(),
      ),
    );
  }
}
