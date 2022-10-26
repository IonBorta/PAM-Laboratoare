import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_3/resources/custom_colors.dart';


//import 'custom_colors.dart';
import 'fonts.dart';

class TextStyles {
  static TextStyle textStyleSfProText14({Color? color,  FontWeight? fontWeight,double? height }) =>
      TextStyle(
          fontSize: 14,
          color: color ?? CustomColors.white,
          fontFamily: "SFProText",
          fontWeight: fontWeight,
          height: height
      );

  static TextStyle textStyleSfProText48({Color? color, FontWeight? fontWeight,double? height }) =>
      TextStyle(
          fontSize: 48,
          color: color ?? CustomColors.mineShaft,
          fontWeight: fontWeight,
        fontFamily: "SFProText",
          height: height
      );
  static TextStyle textStyleSfProText32({Color? color, FontWeight? fontWeight,double? height }) =>
      TextStyle(
          fontSize: 32,
          color: color ?? CustomColors.mineShaft,
          fontWeight: fontWeight,
          fontFamily: "SFProText",
          height: height
      );
  static TextStyle textStyleSfProText12({Color? color, FontWeight? fontWeight,double? height }) =>
      TextStyle(
          fontSize: 12,
          color: color ?? CustomColors.mineShaft,
          fontWeight: fontWeight,
          fontFamily: "SFProText",
          height: height
      );
  static TextStyle textStyleSfProText18({Color? color, FontWeight? fontWeight,double? height }) =>
      TextStyle(
          fontSize: 18,
          color: color ?? CustomColors.mineShaft,
          fontWeight: fontWeight,
          fontFamily: "SFProText",
          height: height
      );
}