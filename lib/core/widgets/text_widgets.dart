import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:gasecuador/core/constants/color_constants.dart';


class Texts {
  static textBold(String label,
      {double? size, Color? color, FontWeight? fontWeight, textAlign,int? maxlines,TextOverflow? overFlow}) {
    return AutoSizeText(
      label,
      textAlign: textAlign ?? TextAlign.center,
      maxLines: maxlines??1,
      overflow: overFlow,
      style: TextStyle(

        fontSize: size ?? 28,
        fontFamily: "Poppins",
        fontWeight: fontWeight ?? FontWeight.bold,


        color: color ?? Colors.black,
      ),
    );
  }

  static textNormal(String label,
      {double? size, Color? color, String? fontFamily, textAlign, overflow,var decoration,var fontWeight}) {
    return AutoSizeText(
      label,
      style: TextStyle(

        decoration: decoration,
          fontSize: size ?? 18.0,
          fontWeight: fontWeight??FontWeight.w400,
          fontFamily: "PlusJakartaSansRegular",
          color: color ?? ColorConstants.greyTextColor,
          overflow: overflow),
      textAlign: textAlign ?? TextAlign.center,

    );
  }

  static textMedium(String label,
      {double? size, Color? color, String? fontFamily, fontWeight}) {
    return AutoSizeText(
      label,
      style: TextStyle(
          fontWeight: fontWeight,
          fontSize: size ?? 18.0,
          fontFamily: "PoppinsBlack",
          color: color ?? Colors.black),
    );
  }

  static TextUrbanistCenter(String label,
      {double? size,
      Color? color,
      FontWeight? fontWeight,
      String? fontFamily}) {
    return AutoSizeText(
      label,
      style: TextStyle(
        fontSize: size ?? 18.0,
        fontFamily: fontFamily ?? "InstrumentSansRegular",
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color ?? Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }

  static textBlock(String label,
      {double? size,
      Color? color,
      FontWeight? fontWeight,
      String? fontFamily,
      var overflow,
      int? maxline,
      var align,
      var decoration
      }) {
    return AutoSizeText(
      label,
      style: TextStyle(
decoration: decoration,

          fontSize: size ?? 18.0,
          fontFamily: fontFamily ?? "PoppinsRegular",
          fontWeight: fontWeight ?? FontWeight.bold,

          color: color ?? Colors.black,

      ),
      overflow: overflow ?? TextOverflow.ellipsis,
      textAlign: align ?? TextAlign.start,
      maxLines: maxline ?? 1,
    );
  }

  static textUnderlineBlock(String label,
      {double? size,
      Color? color,
      FontWeight? fontWeight,
      String? fontFamily,
      var overflow,
      int? maxline,
      bool? underline}) {
    return AutoSizeText(
      label,
      style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: size ?? 18.0,
          fontFamily: fontFamily ?? "InstrumentSansRegular",
          fontWeight: fontWeight ?? FontWeight.bold,
          color: color ?? Colors.black),
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines: maxline ?? 1,
    );
  }
}
