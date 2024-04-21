import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/features/crew/data/crew_data.dart';
import 'package:space_app/core/widgets/custom_grid_container.dart';
import 'package:space_app/features/crew/ui/screens/crew_details_screen.dart';

class CrewGridView extends StatelessWidget {
  const CrewGridView({super.key});

  // should have a list returned from API, for now import crew list from crew dummy data

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 100.w / 110.h,
            crossAxisSpacing: 35.w,
            mainAxisSpacing: 30.h,
          ),
          children: [
            for (final member in crewList)
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          CrewDetailsScreen(crewMember: member),
                    ),
                  );
                },
                child: CustomGridContainer(
                  title: member.name,
                  imageUrl: member.imageUrl,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
