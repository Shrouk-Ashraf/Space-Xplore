
import 'package:flutter/material.dart';

import '../../data/rocket_data.dart';

class ImageOfDetailsSection extends StatelessWidget {
  const ImageOfDetailsSection({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
      ),
      child: SizedBox(
        height: screenHeight / 2.2,
        width: screenWidth,
        child: Image.network(
          rocketList[0].flickrImages![0],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}