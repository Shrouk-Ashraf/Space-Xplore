import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/colors.dart';

class TextStyles {
  static TextStyle font18WhiteRegular = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
  );
  static TextStyle font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    color: ColorsManager.grey,
  );
  static TextStyle font24WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Orbitron',
  );
  static TextStyle font20WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font10WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Orienta',
  );
  static TextStyle font12WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Orienta',
  );

  static TextStyle font15WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Orienta',
  );
  static TextStyle font15Blue500Weight = TextStyle(
    color: ColorsManager.blue,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Orienta',
  );
  static TextStyle font10White500Weight = TextStyle(
    color: ColorsManager.white,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Orienta',
  );
  static TextStyle font15White500Weight = TextStyle(
    color: ColorsManager.white,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Orienta',
  );
  static TextStyle font18White500Weight = TextStyle(
    color: ColorsManager.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Orienta',
  );
  static TextStyle font11Blue500Weight = TextStyle(
    color: ColorsManager.blue,
    decorationColor: ColorsManager.blue,
    decoration: TextDecoration.underline,
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Orienta',
  );
}
