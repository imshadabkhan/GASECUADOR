import 'package:flutter/material.dart';
import 'package:gasecuador/core/constants/color_constants.dart';

Widget quantityButton(IconData icon, VoidCallback onPressed,var borderRadius,) {
  return SizedBox(
    width: 40,
    height: 40,
    child: Container(
      decoration: BoxDecoration(
        color: ColorConstants.blackColor,
        border: Border.all(color: ColorConstants.blackColor),
        borderRadius: borderRadius,

      ),

      child: Icon(icon, size: 16,color: Colors.white,),
    ),
  );
}
