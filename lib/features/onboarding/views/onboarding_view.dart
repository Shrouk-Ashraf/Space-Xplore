import 'package:flutter/material.dart';

import '../data/on_boarding_model_items.dart';
import '../widgets/onboarding_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBody(
        items: onBoardingItems(),
      ),
    );
  }
}
