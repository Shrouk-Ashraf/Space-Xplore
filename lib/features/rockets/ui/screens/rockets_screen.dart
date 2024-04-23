import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/background_container.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/rocket_grid_view.dart';

class RocketsScreen extends StatelessWidget {
  const RocketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(title: 'Rocket Details',),
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Text('Rockets', style: TextStyles.font18White500Weight),
                SizedBox(height: 10.h),
                const RocketGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
