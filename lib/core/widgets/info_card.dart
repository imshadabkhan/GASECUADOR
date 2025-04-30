import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';

class InfoCard{
  Widget infoCard(
      String icon, String title, String count, Color color, Color chipColor) {
    return Container(
      height: 120.h,

      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0,top: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 35.h,
              width: 35.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: chipColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  icon,
                  height: 20,
                ),
              ),
            ),
            Widgets.heightSpaceH2,
            Texts.textNormal(title, textAlign: TextAlign.start, size: 14),
            Widgets.heightSpaceH05,
            Texts.textBold(
              count,
            ),
          ],
        ),
      ),
    );
  }


}