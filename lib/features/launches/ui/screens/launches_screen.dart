import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/features/launches/ui/widgets/custom_card_with_image_in_left.dart';
import 'package:space_app/features/launches/ui/widgets/custom_card_with_image_in_top.dart';

class LaunchesScreen extends StatelessWidget {
  const LaunchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(
        title: "SpaceX",
      ),
      body: BackgroundContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 13, bottom: 13, start: 16, end: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upcoming Launches",
                    style: TextStyles.font18WhiteRegular,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    height: 160.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, indext) {
                        return const Padding(
                          padding: EdgeInsetsDirectional.only(end: 70.0),
                          child: CustomCardWithImageInLeft(),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "All Launches",
                    style: TextStyles.font18WhiteRegular,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // padding: EdgeInsets.symmetric(horizontal: 10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 55.w / 80.h,
                        crossAxisSpacing: 30.w,
                        mainAxisSpacing: 40.h,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, indext) {
                        return const CustomCardWithImageInTop(
                          title: "DemoSat",
                          subTitle:
                              "Engine failure at 33 seconds and loss of vehicle",
                          imageUrl:
                              "https://images2.imgbox.com/94/f2/NN6Ph45r_o.png",
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
