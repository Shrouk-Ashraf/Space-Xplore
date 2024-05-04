import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/widgets/bottom_nav_bar.dart';
import 'package:space_app/features/no%20internet/ui/widgets/no_internet_column.dart';
import 'package:space_app/features/onboarding/ui/widgets/custom_page_view.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManager.darkBlue,
        body: SafeArea(
          child: IntroductionScreen(
            globalBackgroundColor: ColorsManager.backgroundColor,
            dotsDecorator:
                const DotsDecorator(activeColor: ColorsManager.mainColor),
            pages: [
              CustomPageView.generateCustomPageView(
                  context: context,
                  image: 'assets/json/onboarding_screen1.json',
                  title: 'Welcome to SpaceX',
                  body:
                      'Explore the world of SpaceX rockets, launches, and the crew shaping the future of space travel.'),
              CustomPageView.generateCustomPageView(
                  context: context,
                  image: 'assets/json/onboarding_screen2.json',
                  title: 'Unleash Your Inner Space Explorer',
                  body:
                      'Stay informed with the latest SpaceX news and updates - all at your fingertips!'),
            ],
            doneStyle: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.zero),
            ),
            showNextButton: false,
            done: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Done",
                style: TextStyle(color: ColorsManager.mainColor),
              ),
            ),
            onDone: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const BottomNavBar();
                  },
                ),
              );
            },
          ),
        ));
  }
}
