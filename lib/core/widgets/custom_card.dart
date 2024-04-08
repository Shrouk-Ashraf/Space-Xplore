import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:space_app/core/theming/images_data.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 195,
      height: 185,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        border: Border.all(color: Colors.white.withOpacity(0.13)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFDFDFD).withOpacity(0.15),
            Color(0xFFFDFDFD).withOpacity(0.05),
          ],
        ),
      ),
      child: Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4,
              ),
            ),
            const Card(
              elevation: 5,
              color: Colors.transparent,
              child: Column(
                children: [],
              ),
            ),
            Positioned(
              bottom: 140,
              right: 10,
              left: 20,
              child: Image.asset(
                ImagesManager.testImage,
                height: 110,
                width: 110,
              ),
            )
          ],
        ),
      ),
    );
  }
}
