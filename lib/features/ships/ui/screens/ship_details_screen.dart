import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helper/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/background_container.dart';

class ShipDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: SafeArea(
          child: Center(
            child: Container(
              height: 440.h,
              width: 330.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorsManager.lightTransparent,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ship Details",
                      style: TextStyles.font20WhiteBold,
                    ),
                    verticalSpace(24.h),
                    const Divider(color: ColorsManager.darkGrey),
                    verticalSpace(12.h),
                    Text(
                      "American champion",
                      style: TextStyles.font15WhiteBold,
                    ),
                    verticalSpace(10.h),
                    Row(
                      children: [
                        Text(
                          "Home port:",
                          style: TextStyles.font15WhiteBold,
                        ),
                        horizantalSpace(8.w),
                        Text(
                          "port of los Angles",
                          style: TextStyles.font15White500Weight,
                        ),
                      ],
                    ),
                    verticalSpace(10.h),
                    Row(
                      children: [
                        Text(
                          "Type:",
                          style: TextStyles.font15WhiteBold,
                        ),
                        horizantalSpace(8.w),
                        Text(
                          "Tug",
                          style: TextStyles.font15White500Weight,
                        ),
                      ],
                    ),
                    verticalSpace(10.h),
                    Row(
                      children: [
                        Text(
                          "Status:",
                          style: TextStyles.font15WhiteBold,
                        ),
                        horizantalSpace(8.w),
                        Text(
                          "Stopped",
                          style: TextStyles.font15White500Weight
                              .copyWith(color: ColorsManager.red),
                        ),
                      ],
                    ),
                    verticalSpace(10.h),
                    Row(
                      children: [
                        Text(
                          "Year Built:",
                          style: TextStyles.font15WhiteBold,
                        ),
                        horizantalSpace(8.w),
                        Text(
                          "1976",
                          style: TextStyles.font15White500Weight,
                        ),
                      ],
                    ),
                    verticalSpace(10.h),
                    Row(
                      children: [
                        Text(
                          "Weight:",
                          style: TextStyles.font15WhiteBold,
                        ),
                        horizantalSpace(8.w),
                        Text(
                          "(266,712 kg)",
                          style: TextStyles.font15White500Weight,
                        ),
                      ],
                    ),
                    verticalSpace(24.h),
                    Text(
                      "Wikipedia",
                      style: TextStyles.font15Blue500Weight,
                    ),
                    verticalSpace(24.h),
                    const Divider(color: ColorsManager.darkGrey),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
