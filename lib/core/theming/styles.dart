import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/font_weight_manager.dart';

class TextStyles {
  // ------------------- Regular fonts -------------------
  static TextStyle font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.grey,
  );
  static TextStyle font16WhiteRegular = TextStyle(
    color: ColorsManager.white,
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
    fontFamily: 'Orienta',
  );
  static TextStyle font18WhiteRegular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.regular,
    color: Colors.white,
  );

  // ------------------- Medium Fonts -------------------
  static TextStyle font10WhiteMedium = TextStyle(
    color: ColorsManager.white,
    fontSize: 10.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: 'Orienta',
  );
  static TextStyle font11BlueMedium = TextStyle(
    color: ColorsManager.blue,
    decorationColor: ColorsManager.blue,
    decoration: TextDecoration.underline,
    fontSize: 11.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: 'Orienta',
  );
  static TextStyle font15WhiteMedium = TextStyle(
    color: ColorsManager.white,
    fontSize: 15.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: 'Orienta',
  );
  static TextStyle font15BlueMedium = TextStyle(
    color: ColorsManager.blue,
    fontSize: 15.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: 'Orienta',
  );
  static TextStyle font18WhiteMedium = TextStyle(
    color: ColorsManager.white,
    fontSize: 18.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: 'Orienta',
  );

  //------------------- Bold fonts -------------------
  static TextStyle font10WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 10.sp,
    fontWeight: FontWeightManager.bold,
    fontFamily: 'Orienta',
  );
  static TextStyle font12WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 12.sp,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle font15WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 15.sp,
    fontWeight: FontWeightManager.bold,
    fontFamily: 'Orienta',
  );
  static TextStyle font20WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 20.sp,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle font24WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
    fontFamily: 'Orbitron',
  );
}
