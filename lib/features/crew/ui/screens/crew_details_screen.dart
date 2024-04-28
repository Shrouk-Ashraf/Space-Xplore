import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/core/widgets/custom_app_bar.dart';
import 'package:space_app/core/widgets/background_container.dart';
import 'package:space_app/core/widgets/wikipedia_link_text.dart';
import 'package:space_app/features/crew/data/models/crew_member_model.dart';
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
              height: 450.h,
              width: 300.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorsManager.lightTransparent,
              ),
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CrewCircleImage(crewMemberImageUrl: crewMember.imageUrl),
                    verticalSpace(10),
                    _buildTextInRow(
                        crewMember.name, TextStyles.font19WhiteBold),
                    verticalSpace(10),
                    const Divider(color: ColorsManager.darkGrey),
                    Row(
                      children: [
                        _buildColumn('Agency', crewMember.agency),
                        horizontalSpace(20),
                        _buildColumn('Status', crewMember.status),
                        horizontalSpace(20),
                        _buildColumn('Launches', 'DemoSat'),
                      ],
                    ),
                    verticalSpace(25),
                    WikipediaLinkText(
                      wikipediaUrl: crewMember.wikipediaUrl,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildColumn(String title, String content) {
    return Expanded(
      child: Column(
        children: [
          _buildTextInRow(title, TextStyles.font16WhiteBold),
          verticalSpace(10),
          _buildTextInRow(content, TextStyles.font10WhiteMedium),
        ],
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
