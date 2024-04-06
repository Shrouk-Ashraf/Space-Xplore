import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/features/crew/presentation/crew_grid_view.dart';
import 'package:space_app/core/widgets/subtitle.dart';
import 'package:space_app/core/widgets/title.dart';

class CrewScreen extends StatelessWidget {
  const CrewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30.h,
        left: 12.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(),
          SizedBox(height: 15.h),
          const SubtitleText(subtitle: 'Crew'),
          const CrewGridView(),
        ],
      ),
    );
  }
}
