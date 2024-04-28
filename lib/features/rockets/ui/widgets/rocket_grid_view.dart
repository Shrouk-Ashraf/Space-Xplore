import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:space_app/core/widgets/custom_grid_container.dart';
import 'package:space_app/features/rockets/ui/screens/rocket_details_screen.dart';

import '../../data/rocket_data.dart';

class RocketGridView extends StatelessWidget {
  const RocketGridView({
    super.key,
  });

  // should have a list returned from API, for now import crew list from crew dummy data

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 100.w / 110.h,
          crossAxisSpacing: 60.w,
          mainAxisSpacing: 30.h,
        ),
        children: [
          for (final rocket in rocketList)
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RocketDetailsScreen()));
              },
              child: CustomGridContainer(
                title: rocket.name!,
                imageUrl: rocket.flickrImages![0],
              ),
            ),
        ],
      ),
    );
  }
}
