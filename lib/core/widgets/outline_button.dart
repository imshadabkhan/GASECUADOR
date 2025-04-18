import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';


class MyOutlineButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Widget? prefixIcon, suffixIcon;
  final Color? buttonBGColor, disabledTextColor, textColor;
  final double height, buttonRadius, outlineWidth;
  final double? width;
  final TextStyle? textStyle;
  final EdgeInsets padding;
  final double iconSpacing;
  final Color? borderColor;

  const MyOutlineButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonBGColor,
    this.height = 44,
    this.width,
    this.disabledTextColor,
    this.textColor,
    this.prefixIcon,
    this.suffixIcon,
    this.textStyle,
    this.outlineWidth = 1,
    this.padding = EdgeInsets.zero,
    this.iconSpacing = 10,
    this.buttonRadius = 5,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        height: height.h,
        width: width == null ? 1.sw : width!.w,
        child: OutlinedButton(

          onPressed: onPressed,
          style: ButtonStyle(
            padding:  MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0)),            backgroundColor:MaterialStateProperty.all<Color>(buttonBGColor ?? ColorConstants.transparentColor),
            overlayColor: WidgetStateProperty.all(
              textColor?.withOpacity(0.05) ??ColorConstants.primaryColor,
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonRadius.h),
              ),
            ),
            side: WidgetStateProperty.all(
              BorderSide(
                width: outlineWidth,
                // color: onPressed != null
                //     ? textColor ?? MyColors.whiteFFFFFF
                //     : MyColors.grayE6E6E6,
                color: borderColor??
                    ColorConstants.primaryColor,
              ),
            ),
          ),
          child: FittedBox(
            child: Row(
              children: [
                prefixIcon ?? const SizedBox(),
                SizedBox(width: iconSpacing),
                Texts.textNormal(
                  text,
                  textAlign: TextAlign.center,


                ),
                SizedBox(width: iconSpacing),
                suffixIcon ?? const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
