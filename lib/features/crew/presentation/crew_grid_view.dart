import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/features/crew/data/crew_data.dart';
import 'package:space_app/core/widgets/custom_grid_container.dart';

class CrewGridView extends StatelessWidget {
  const CrewGridView({super.key});

  // should have a list returned from API, for now import crew list from crew dummy data

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 100.w / 100.h,
          crossAxisSpacing: 30.w,
          mainAxisSpacing: 30.h,
        ),
        children: [
          for (final member in crewList)
            CustomGridContainer(
              title: member.name,
              imageUrl: member.imageUrl,
            ),
        ],
      ),
    );
  }
}
