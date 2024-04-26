import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helper/spacing.dart';
import 'package:space_app/core/theming/styles.dart';

class TitileAndSubTitle extends StatelessWidget {
  TitileAndSubTitle(
      {super.key, required this.title, required this.subTitle, this.textStyle});
  String title, subTitle;
  TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.font15WhiteBold,
        ),
        horizantalSpace(8.w),
        Text(
          subTitle,
          style: textStyle ?? TextStyles.font15White500Weight,
        ),
      ],
    );
  }
}
