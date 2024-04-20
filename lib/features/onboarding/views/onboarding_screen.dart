import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:space_app/features/onboarding/data/on_boarding_model.dart';

import '../data/on_boarding_model_items.dart';
import '../widgets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff080D13),
        body: SafeArea(
          child: IntroductionScreen(
            // controlsPadding: EdgeInsets.zero,
            globalBackgroundColor: Color(0xff080D13),
            dotsDecorator: DotsDecorator(activeColor: Color(0xff3EB8FF)),
            pages: [
              PageViewModel(
                titleWidget: Column(
                  children: [
                    Lottie.asset('assets/images/onboarding_screen1.json',
                        fit: BoxFit.fill),
                    Text(
                      'Welcome to SpaceX',
                      style: TextStyle(
                          fontFamily: 'Orbitron',
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ],
                ),
                bodyWidget: Text(
                  'Explore the world of SpaceX rockets, launches, and the crew shaping the future of space travel.',
                  style: TextStyle(
                    fontFamily: "Ubuntu",
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
              PageViewModel(
                titleWidget: Column(
                  children: [
                    Lottie.asset('assets/images/onboarding_screen1.json',
                        fit: BoxFit.fill),
                    Text(
                      'Unleash Your Inner Space Explorer',
                      style: TextStyle(
                          fontFamily: 'Orbitron',
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ],
                ),
                bodyWidget: Text(
                  'Stay informed with the latest SpaceX news and updates - all at your fingertips!',
                  style: TextStyle(
                    fontFamily: "Ubuntu",
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              )
            ],
            doneStyle:
                ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.zero)),
            showNextButton: false,
            overrideDone: Align(
              alignment: Alignment.centerRight,
              child: const Text(
                "Done",
                style: TextStyle(color: Color(0xff3EB8FF)),
              ),
            ),
            onDone: () {
              // On button pressed
            },
          ),
        ));
  }
}
