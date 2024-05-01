import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helpers/spacing.dart';
import 'package:space_app/core/theming/styles.dart';

class TitleAndSubTitle extends StatelessWidget {
  const TitleAndSubTitle(
      {super.key, required this.title, required this.subTitle, this.textStyle});

  final String title, subTitle;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            title,
            style: TextStyles.font15WhiteBold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        horizontalSpace(8.w),
        Flexible(
          flex: 2,
          child: Text(
            subTitle,
            style: textStyle ?? TextStyles.font15White500Weight,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
