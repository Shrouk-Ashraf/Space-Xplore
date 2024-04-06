import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/features/crew/presentation/crew_grid_item.dart';

class CrewGridView extends StatelessWidget {
  const CrewGridView({super.key});

  // should have list of widgets returned from API
  // List<CrewModel> crew;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 12.w,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 240.w / 400.h,
          crossAxisSpacing: 15.w,
          mainAxisSpacing: 10.h,
        ),
        children: const [
          // loop on list, for now no list just item
          CrewGridItem(),
        ],
      ),
    );
  }
}
