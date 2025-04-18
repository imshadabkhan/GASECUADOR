import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class ImagePreview extends StatelessWidget {
  String? imageUrl;
  bool? isNetwork;

  ImagePreview({super.key, required this.imageUrl, required this.isNetwork});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              // isNetwork == true
              //     ? PhotoView(
              //         imageProvider: NetworkImage(imageUrl ?? ""),
              //       )
              //     : PhotoView(
              //         imageProvider: AssetImage(imageUrl ?? ""),
              //       ),
              Positioned(
                  right: 20,
                  top: 20,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      CupertinoIcons.clear_circled_solid,
                      color: Colors.white,
                      size: 23.sp,
                    ),
                  ))
            ],
          ),
        ));
  }
}
