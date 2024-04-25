import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:space_app/core/widgets/custom_grid_container.dart';

import '../../data/rocket_data.dart';

class RocketGridView extends StatelessWidget {
  const RocketGridView({
    super.key,
  });

  // should have a list returned from API, for now import crew list from crew dummy data

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 100.w / 120.h,
            crossAxisSpacing: 40.w,
            mainAxisSpacing: 35.h,
          ),
          children: [
            for (final member in rocketList)
              CustomGridContainer(
                title: member.name!,
                imageUrl: member.flickrImages![0],
              ),
          ],
        ),
      ),
    );
  }
}
