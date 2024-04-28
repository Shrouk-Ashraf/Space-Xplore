import 'package:flutter/material.dart';
import 'package:space_app/features/onboarding/data/on_boarding_model.dart';

import 'dot_indicator.dart';

class OnBoardingBodyWidget extends StatelessWidget {
  const OnBoardingBodyWidget({
    super.key,
    required this.onBoarding,
    required this.onPressed,
    required this.pageNumber,
  });
  final OnBoarding onBoarding;
  final void Function() onPressed;
  final int pageNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(onBoarding.image),
      )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Spacer(),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                onBoarding.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'Orbitron',
                    fontWeight: FontWeight.w900),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Text(
                  onBoarding.subTitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: 'Ubuntu',
                  ),
                ),
              ),
              trailing: InkWell(
                onTap: onPressed,
                child: Image.asset('assets/images/button next.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: DotIndIndcator(
                pageNumber: pageNumber,
              ),
            ),
            const SizedBox(
              height: 68,
            )
          ],
        ),
      ),
    );
  }
}
