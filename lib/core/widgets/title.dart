import 'package:flutter/material.dart';
import 'package:space_app/core/theming/styles.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'SpaceX',
      style: TextStyles.font30WhiteBold,
    );
  }
}
