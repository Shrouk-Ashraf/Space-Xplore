import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class CustomPageView {
  static PageViewModel generateCustomPageView(
      {required BuildContext context,
      required String image,
      required String title,
      required String body}) {
    return PageViewModel(
      titleWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: Lottie.asset(image, fit: BoxFit.fill)),
          Text(
            title,
            style: const TextStyle(
                fontFamily: 'Orbitron', fontSize: 24, color: Colors.white),
          ),
        ],
      ),
      bodyWidget: Text(
        body,
        style: TextStyle(
          fontFamily: "Ubuntu",
          fontSize: 14,
          color: Colors.white.withOpacity(0.7),
        ),
      ),
    );
  }
}
