import 'dart:ui';

import 'package:flutter/material.dart';

import 'custom_colors.dart';

class TextStyles {
  static TextStyle textStyleSourceSansPro(
      {double? fontSize, Color? color, FontWeight? fontWeight, double? height }) =>
      TextStyle(
          fontSize: fontSize,
          color: color ?? Colors.white,
          fontFamily: "SourceSansPro",
          fontWeight: fontWeight,
          height: height
      );
}