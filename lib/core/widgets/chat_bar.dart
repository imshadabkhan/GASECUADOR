
 import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';



import '../constants/color_constants.dart';

class ChatCustomBar extends StatelessWidget {
  ChatCustomBar({required this.title, required this.avatarUrl, this.onTap});

  String? title;

  String? avatarUrl;
  Callback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: ColorConstants.primaryColor,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            InkWell(
              onTap: onTap,
              child: Row(
                children: [
                  // AdvancedAvatar(
                  //   animated: true,
                  //   size: 32,
                  //   foregroundDecoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     border: Border.all(
                  //       color: Colors.grey,
                  //       width: 1.0,
                  //     ),
                  //   ),
                  //   child: avatarUrl == ""
                  //       ? Text(title!.substring(0, 1))
                  //       : Widgets.networkImage(avatarUrl ?? "",
                  //           width: 100, height: 100),
                  // ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: .55.sw,
                      child: Texts.textBlock(title ?? "",
                          fontWeight: FontWeight.w600,
                          size: 16,
                          color: ColorConstants.primaryColor,
                          maxline: 1,
                          overflow: TextOverflow.ellipsis)),
                ],
              ),
            )
          ],
        ),

      ],
    );
  }
}
