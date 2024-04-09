import 'package:flutter/material.dart';

abstract class ColorsManager {
  static const grey = Color(0xFF808284);
  static const Color darkGrey = Color(0xFF383A3D);
  static const Color white = Color(0xFFffffff);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00FFFFFF);
  static Color semiTransparent = const Color(0xffc4c4c4).withOpacity(0.5);
}
