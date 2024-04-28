import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/helper/spacing.dart';
import 'package:space_app/core/theming/styles.dart';

class TitileAndSubTitle extends StatelessWidget {
  TitileAndSubTitle(
      {Key? key, required this.title, required this.subTitle, this.textStyle})
      : super(key: key);

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
        horizantalSpace(8.w),
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
