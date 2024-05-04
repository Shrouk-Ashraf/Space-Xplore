import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:space_app/core/widgets/custom_grid_container.dart';

import '../../data/models/rocket_model/rocket_model.dart';
import '../screens/rocket_details_screen.dart';

class RocketGridView extends StatelessWidget {
  const RocketGridView({
    super.key,
    required this.rockets,
  });

  final List<RocketModel> rockets;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          bottom: 50.w,
        ),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 100.w / 120.h,
            crossAxisSpacing: 40.w,
            mainAxisSpacing: 35.h,
          ),
          children: [
            for (final rocket in rockets)
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RocketDetailsScreen(
                                rocketModel: rocket,
                              )));
                },
                child: CustomGridContainer(
                  title: rocket.name,
                  imageUrl: rocket.flickrImages[0],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
