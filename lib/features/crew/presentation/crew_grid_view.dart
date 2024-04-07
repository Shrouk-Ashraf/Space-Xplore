import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/features/crew/data/crew_data.dart';
import 'package:space_app/features/crew/presentation/crew_member_grid.dart';

class CrewGridView extends StatelessWidget {
  const CrewGridView({super.key});

  // should have list of widgets returned from API, for now import crew list from crew data

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
          childAspectRatio: 150.w / 250.h,
          crossAxisSpacing: 20.w,
        ),
        children: [
          for (final member in crewList) CrewMemberGrid(crewMember: member),
        ],
      ),
    );
  }
}
