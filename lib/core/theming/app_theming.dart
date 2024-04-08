import 'package:flutter/material.dart';

import 'colors_manager.dart';

abstract class AppTheming {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: Colors.white,
      secondary: ColorsManager.lightGrey,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.black,
      primary: Colors.black,
      secondary: ColorsManager.lightBlck,
    ),
  );
}
