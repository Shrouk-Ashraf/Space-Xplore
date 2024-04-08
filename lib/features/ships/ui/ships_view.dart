import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helper/spacing.dart';
import 'package:space_app/core/theming/images_data.dart';
import 'package:space_app/core/widgets/custom_card.dart';

class ShipsView extends StatelessWidget {
  const ShipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagesManager.backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            verticalSpace(150),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(child: Center(child: CustomCard())),
                  horizantalSpace(10),
                  Expanded(child: Center(child: CustomCard())),
                ],
              ),
            ),
            verticalSpace(100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(child: Center(child: CustomCard())),
                  horizantalSpace(10),
                  Expanded(child: Center(child: CustomCard())),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
