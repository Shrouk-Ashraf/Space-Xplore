import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/font_weight_manager.dart';
import 'package:space_app/core/theming/fonts.dart';

class TextStyles {
  // TODO: font family to be added to all
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
    fontFamily: Fonts.orientaFont,
  );
  static TextStyle font16LightBlueRegular = TextStyle(
    color: ColorsManager.lightBlue,
    fontSize: 16.sp,
  );
  static TextStyle font18WhiteRegular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.white,
  );

  // ------------------- Medium Fonts -------------------
  static TextStyle font10WhiteMedium = TextStyle(
    color: ColorsManager.white,
    fontSize: 10.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: Fonts.orientaFont,
  );
  static TextStyle font11BlueMedium = TextStyle(
    color: ColorsManager.blue,
    decorationColor: ColorsManager.blue,
    decoration: TextDecoration.underline,
    fontSize: 11.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: Fonts.orientaFont,
  );
  static TextStyle font13BlueMedium = TextStyle(
    color: ColorsManager.blue,
    decorationColor: ColorsManager.blue,
    decoration: TextDecoration.underline,
    fontSize: 13.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: Fonts.orientaFont,
  );
  static TextStyle font18WhiteMedium = TextStyle(
    color: ColorsManager.white,
    fontSize: 18.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: Fonts.orientaFont,
  );
  static TextStyle font20WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 18.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: Fonts.orientaFont,
  );

  //------------------- Bold fonts -------------------
  static TextStyle font10WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 10.sp,
    fontWeight: FontWeightManager.bold,
    fontFamily: Fonts.orientaFont,
  );
  static TextStyle font24BlackBold = TextStyle(
    color: ColorsManager.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font12WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 12.sp,
    fontWeight: FontWeightManager.bold,
  );

  static TextStyle font13WhiteRegular = TextStyle(
    color: ColorsManager.white,
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle font14WhiteRegular = TextStyle(
    color: ColorsManager.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle font15WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 16.sp,
    fontWeight: FontWeightManager.bold,
    fontFamily: Fonts.orientaFont,
  );
  static TextStyle font16WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 16.sp,
    fontWeight: FontWeightManager.bold,
    fontFamily: Fonts.orientaFont,
  );

  static TextStyle font14BlueRegular = TextStyle(
    color: ColorsManager.blue,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font10White500Weight = TextStyle(
    color: ColorsManager.white,
    fontSize: 20.sp,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle font19WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 19.sp,
    fontWeight: FontWeightManager.bold,
    fontFamily: Fonts.orbitronFont,
  );
  static TextStyle font20WhiteBoldOrbitron = TextStyle(
    color: ColorsManager.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Orbitron',
  );
  static TextStyle font24WhiteBold = TextStyle(
    color: ColorsManager.white,
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
    fontFamily: Fonts.orbitronFont,
  );
  static TextStyle font24BlackBoldOrbitorn = TextStyle(
    color: ColorsManager.black,
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
    fontFamily: Fonts.orbitronFont,
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
  static TextStyle font15Blue500Weight = TextStyle(
    color: ColorsManager.blue,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Orienta',
  );
}
