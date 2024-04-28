import 'package:flutter/material.dart';

import '../data/on_boarding_model.dart';
import 'onboarding_body_widget.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key, required this.items});
  final List<OnBoarding> items;

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

PageController nextPage = PageController();
int pageNumber = 0;

class _OnboardingBodyState extends State<OnboardingBody> {
  @override
  Widget build(BuildContext context) {
    return PageView(
        controller: nextPage,
        onPageChanged: (value) {
          pageNumber = value;
          setState(() {});
        },
        children: [
          OnBoardingBodyWidget(
            pageNumber: pageNumber,
            onBoarding: widget.items[0],
            onPressed: () {
              nextPage.animateToPage(1,
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeIn);
            },
          ),
          OnBoardingBodyWidget(
            pageNumber: pageNumber,
            onBoarding: widget.items[1],
            onPressed: () {},
          ),
        ]);
  }
}
