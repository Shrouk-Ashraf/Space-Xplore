import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';

class CrewGridItem extends StatelessWidget {
  const CrewGridItem({super.key});

  // should have a crew model returned from API and build the grid item with that model

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: ColorsManager.semiTransparent,
      ),
      child: Expanded(
        child: Column(
          children: [
            Image.asset('assets/images/crew member.jpeg'),
            Text('Robert Behnken', style: TextStyles.font15WhiteBold),
            SizedBox(height: 5.h),
            buildCrewPropertyRow('Agency: ', 'NASA'),
            buildCrewPropertyRow('Status: ', 'active'),
            buildCrewPropertyRow('Wikipedia: ',
                'https://en.wikipedia.org/wiki/Robert_L._Behnken'),
          ],
        ),
      ),
    );
  }

  Padding buildCrewPropertyRow(String label, String text) {
    return Padding(
      padding: EdgeInsets.only(left: 5.w),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyles.font10White500Weight,
          ),
          Flexible(
            // should be changed later to be clickable text
            child: Text(
              text,
              style: TextStyles.font10White500Weight,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
