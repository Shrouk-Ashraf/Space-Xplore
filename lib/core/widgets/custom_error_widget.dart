import 'package:flutter/material.dart';
import 'package:space_app/core/theming/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: TextStyles.font20WhiteBold,
      ),
    );
  }
}
