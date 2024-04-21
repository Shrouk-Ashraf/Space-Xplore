
import 'package:flutter/material.dart';

import '../../data/rocket_data.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth / 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            rocketList[0].name!,
            style: const TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Company : ${rocketList[0].company}",
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xff3EB8FF),
                fontSize: 20,
                fontFamily: 'Orienta'),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            rocketList[0].description!,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Wikipedia',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xff3EB8FF),
                fontSize: 20,
                fontFamily: 'Orienta'),
          ),
        ],
      ),
    );
  }
}