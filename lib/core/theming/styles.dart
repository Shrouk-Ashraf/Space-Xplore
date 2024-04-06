import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/colors.dart';

class TextStyles {
  static TextStyle font30WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font10WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font15WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font10White500Weight = TextStyle(
    color: ColorsManager.white,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font20White500Weight = TextStyle(
    color: ColorsManager.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );
}
