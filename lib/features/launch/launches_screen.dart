import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:space_app/core/widgets/custom_card.dart';

class LaunchesScreen extends StatelessWidget {
  const LaunchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/background_image.png",
            ),
            fit: BoxFit.fill),
      ),
      child: const SafeArea(
        child: CustomCard(
            title: "DemoSat",
            subTitle:
                "Successful first stage burn and transition to second stage, maximum altitude 289 km, Premature engine shutdown at T+7 min 30 s, Failed to reach orbit, Failed to recover first stage",
            imageUrl: "https://images2.imgbox.com/94/f2/NN6Ph45r_o.png"),
      ),
    ));
  }
}
