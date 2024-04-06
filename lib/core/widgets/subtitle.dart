import 'package:flutter/material.dart';
import 'package:space_app/core/theming/styles.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({super.key, required this.subtitle});

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: TextStyles.font20White500Weight,
    );
  }
}
