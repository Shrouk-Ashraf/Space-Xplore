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
}
