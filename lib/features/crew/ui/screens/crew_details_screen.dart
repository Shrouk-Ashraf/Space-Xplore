import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/wikipedia_link_text.dart';
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
              height: 440.h,
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
                    verticalSpace(10),
                    _buildTextInRow(
                        crewMember.name, TextStyles.font24WhiteBold),
                    verticalSpace(10),
                    const Divider(color: ColorsManager.darkGrey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildTextInRow('Agency', TextStyles.font15WhiteBold),
                        _buildTextInRow('Status', TextStyles.font15WhiteBold),
                        _buildTextInRow('Launches', TextStyles.font15WhiteBold),
                      ],
                    ),
                    verticalSpace(5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildTextInRow(
                              crewMember.agency, TextStyles.font10WhiteMedium),
                          _buildTextInRow(
                              crewMember.status, TextStyles.font10WhiteMedium),
                          _buildTextInRow(
                              'DemoSat', TextStyles.font10WhiteMedium),
                        ],
                      ),
                    ),
                    verticalSpace(20),
                    Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: WikipediaLinkText(
                          wikipediaUrl: crewMember.wikipediaUrl,
                        ),
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

  Text _buildTextInRow(String text, TextStyle textStyle) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
