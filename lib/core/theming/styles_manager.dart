import 'package:flutter/material.dart';
import 'package:space_app/core/theming/colors_manager.dart';

import 'font_weight_manager.dart';

abstract class StylesManager {
  static TextStyle font40Bold = TextStyle(
    fontSize: 45,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle font22Bold = TextStyle(
    fontSize: 22,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle font25Grey = TextStyle(
    fontSize: 25,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.grey,
  );
  static TextStyle font25 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle font20white = TextStyle(
    fontSize: 20,
    fontWeight: FontWeightManager.regular,
    // color: ColorManager.white,
  );
  static TextStyle font16Grey = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.grey,
  );
  static TextStyle font20Grey = TextStyle(
    fontSize: 20,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.grey,
  );
  static TextStyle font16White = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightManager.regular,
    //color: ColorManager.white,
  );
  static TextStyle font36Blue = TextStyle(
    fontSize: 60,
    fontWeight: FontWeightManager.semiBold,
    color: ColorManager.blue,
  );
  static TextStyle font36Red = TextStyle(
    fontSize: 60,
    fontWeight: FontWeightManager.semiBold,
    color: ColorManager.red,
  );
  static TextStyle font20Blue = TextStyle(
    fontSize: 20,
    fontWeight: FontWeightManager.medium,
    color: ColorManager.blue,
  );
}
