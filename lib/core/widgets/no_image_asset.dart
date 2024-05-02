import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoImageAsset extends StatelessWidget {
  const NoImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/no_photo_placeholder.png",
      width: 80.w,
      height: 80.h,
    );
  }
}
