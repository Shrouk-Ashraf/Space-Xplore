import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helper/spacing.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:space_app/features/ships/ui/widgets/titile_and_sub_title_info.dart';

class InfoDataWithImage extends StatelessWidget {
  const InfoDataWithImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "American champion",
                style: TextStyles.font15WhiteBold,
              ),
              verticalSpace(10.h),
              TitileAndSubTitle(
                title: "Type:",
                subTitle: "Tug",
              ),
              verticalSpace(10.h),
              TitileAndSubTitle(
                title: "Status:",
                subTitle: "Stopped",
                textStyle: TextStyles.font15White500Weight
                    .copyWith(color: ColorsManager.red),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: Image.network(
              'https://i.imgur.com/woCxpkj.jpg',
            ),
          ),
        ),
      ],
    );
  }
}
