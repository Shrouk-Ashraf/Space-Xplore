import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/features/crew/data/crew_member_model.dart';

class CrewMemberGrid extends StatelessWidget {
  const CrewMemberGrid({super.key, required this.crewMember});

  final CrewMemberModel crewMember;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: ColorsManager.semiTransparent,
            ),
            height: 120.h,
            width: 150.w,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  buildVerticalHeight(40.h),
                  Text(crewMember.name, style: TextStyles.font15WhiteBold),
                  buildVerticalHeight(5.h),
                  buildCrewPropertyRow('Agency: ', crewMember.agency),
                  buildCrewPropertyRow('Status: ', crewMember.status),
                  buildCrewPropertyRow('Wikipedia: ', crewMember.wikipediaUrl),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(20.r),
            child: SizedBox(
              height: 100.h,
              width: 100.w,
              child: Image.network(
                crewMember.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }

  SizedBox buildVerticalHeight(double verticalHeight) {
    return SizedBox(height: verticalHeight);
  }

  Row buildCrewPropertyRow(String label, String text) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyles.font10White500Weight,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyles.font10White500Weight,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
