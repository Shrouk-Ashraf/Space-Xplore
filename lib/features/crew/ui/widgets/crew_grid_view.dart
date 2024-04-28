import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/widgets/custom_grid_container.dart';
import 'package:space_app/features/crew/data/models/crew_member_model.dart';
import 'package:space_app/features/crew/ui/screens/crew_details_screen.dart';

class CrewGridView extends StatelessWidget {
  const CrewGridView({super.key, required this.crewList});

  final List<CrewMemberModel> crewList;

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
