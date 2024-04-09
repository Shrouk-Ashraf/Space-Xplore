import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/app_bar.dart';
import 'package:space_app/core/widgets/background.dart';
import 'package:space_app/features/crew/presentation/crew_grid_view.dart';

class CrewScreen extends StatelessWidget {
  const CrewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 17.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Text('Crew', style: TextStyles.font20White500Weight),
                SizedBox(height: 10.h),
                const CrewGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
