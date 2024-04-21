import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/features/crew/data/crew_member_model.dart';
import 'package:space_app/features/crew/ui/widgets/crew_circle_image.dart';

class CrewDetailsScreen extends StatelessWidget {
  const CrewDetailsScreen({
    super.key,
    required this.crewMember,
  });

  final CrewMemberModel crewMember;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(title: crewMember.name),
      body: BackgroundContainer(
        child: SafeArea(
          child: Center(
            child: Container(
              height: 320.h,
              width: 300.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorsManager.lightTransparent,
              ),
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    CrewCircleImage(crewMemberImageUrl: crewMember.imageUrl),
                    buildTextInRow(crewMember.name, TextStyles.font24WhiteBold),
                    const Divider(color: ColorsManager.darkGrey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildTextInRow('Agency', TextStyles.font15WhiteBold),
                        buildTextInRow('Status', TextStyles.font15WhiteBold),
                        buildTextInRow('Launches', TextStyles.font15WhiteBold),
                      ],
                    ),
                    buildVerticalSpacing(5.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildTextInRow(crewMember.agency,
                              TextStyles.font10White500Weight),
                          buildTextInRow(crewMember.status,
                              TextStyles.font10White500Weight),
                          buildTextInRow(
                              'DemoSat', TextStyles.font10White500Weight),
                        ],
                      ),
                    ),
                    buildVerticalSpacing(20.h),
                    Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: buildTextInRow(
                            'Wikipedia', TextStyles.font11Blue500Weight),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildVerticalSpacing(double verticalHeight) =>
      SizedBox(height: verticalHeight);

  Text buildTextInRow(String text, TextStyle textStyle) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
