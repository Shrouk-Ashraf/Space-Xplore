import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DetailsSectionTextWidget extends StatelessWidget {
  const DetailsSectionTextWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: title,
        style: TextStyles.font16WhiteRegular,
      ),
      TextSpan(
        text: subTitle,
        style: TextStyles.font12WhiteBold.copyWith(
          height: 1.5,
          fontWeight: FontWeight.w400,
        ),
      )
    ]));
  }
}