import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/view/bottombar/modules/inbox/view/chat_view.dart';


import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../constants/assets_constants.dart';
import '../constants/color_constants.dart';

class Widgets {
  static var heightSpaceH05 = SizedBox(
    height: 0.005.sh,
  );
  static var heightSpaceH1 = SizedBox(
    height: 0.01.sh,
  );
  static var heightSpaceH2 = SizedBox(
    height: 0.02.sh,
  );
  static var heightSpaceH3 = SizedBox(
    height: 0.03.sh,
  );
  static var heightSpaceH4 = SizedBox(
    height: 0.04.sh,
  );
  static var heightSpaceH5 = SizedBox(
    height: 0.05.sh,
  );
  static var widthSpaceW05 = SizedBox(
    width: 0.005.sw,
  );
  static var widthSpaceW1 = SizedBox(
    width: 0.01.sw,
  );
  static var widthSpaceW2 = SizedBox(
    width: 0.02.sw,
  );
  static var widthSpaceW3 = SizedBox(
    width: 0.03.sw,
  );
  static var widthSpaceW4 = SizedBox(
    width: 0.04.sw,
  );

  static noRecordsFound({required String? title}) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 240),
      child: Text(
        title ?? "",
        style: const TextStyle(color: Colors.black54, fontSize: 16),
      ),
    ));
  }
  // static Center moreLoading() {
  //   return Center(
  //       child: Padding(
  //         padding: const EdgeInsets.all(50.0),
  //         child: CircularProgressIndicator(color: ColorConstants.primaryBlackColor),
  //       ));
  // }

  // static headerSection(
  //     {required String? title, required bool? backOption, Widget? widget}) {
  //   return AppBar(
  //     leading: backOption ?? false
  //         ? InkWell(
  //             onTap: () {
  //               Get.back();
  //             },
  //             child: Icon(
  //               Icons.arrow_back_ios,
  //               color: ColorConstants.primaryColor,
  //               size: 18,
  //             ),
  //           )
  //         : const SizedBox(),
  //     backgroundColor: ColorConstants.backgroundColor,
  //     centerTitle: true,
  //     title: Texts.textBold(title ?? ""),
  //     actions: [
  //       widget != null ? widget! : const SizedBox(),
  //       const SizedBox(
  //         width: 20,
  //       )
  //     ],
  //   );
  // }

  static final cardBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.black12.withOpacity(.03),
        spreadRadius: 3,
        blurRadius: 3,
        // changes position of shadow
      ),
    ],
  );
  static final searchBox = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black12.withOpacity(.03),
        spreadRadius: 3,
        blurRadius: 3,
        // changes position of shadow
      ),
    ],
  );
  static noFound(String title) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Text(
        title,
        style: const TextStyle(color: Colors.black54, fontSize: 16),
      ),
    ));
  }

  static var blockDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: ColorConstants.greyTextColor, // Light grey shadow
        spreadRadius: 1, // How much the shadow spreads
        blurRadius: 10, // How soft the shadow looks
        offset: Offset(0, 3), // Positioning (horizontal, vertical)
      ),
    ],
  );
  static customDivider(
      {bool isVertical = false,
      Color? color,
      double? padding,
      double? thickness}) {
    return Padding(
      padding: padding != null
          ? EdgeInsets.symmetric(vertical: padding)
          : const EdgeInsets.only(top: 5.0),
      child: isVertical
          ? VerticalDivider(
              thickness: 1.0,
              color: color ?? Colors.black12,
            )
          : Divider(
              height: 1.0,
              thickness: thickness ?? 1.0,
              color: color ?? Colors.black12,
            ),
    );
  }

  static Widget chatCard({
    required String name,
    required String message,
    required String time,
    required String image,
    required int unreadCount,
  }) {
    return GestureDetector(
      onTap: () {
        Get.to(() => ChatView());
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(image),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 1.0, bottom: 3.0),
                    child: CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.green,
                        ))),
              ],
            ),
            Widgets.widthSpaceW3,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts.textBlock(name, size: 13, fontWeight: FontWeight.w600),
                  Widgets.heightSpaceH1,
                  Texts.textNormal(message,
                      size: 12,
                      color: ColorConstants.greyTextColor,
                      overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: TextStyle(
                      fontSize: 8,
                      color: Colors.black45,
                      fontFamily: "InstrumentSansRegular"),
                ),
                SizedBox(
                  height: 4,
                ),
                if (unreadCount > 0)
                  CircleAvatar(
                    backgroundColor: ColorConstants.primaryColor,
                    radius: 3,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static buildRatingStar(num starValue, {bool? isCenter, double? size}) {
    Color color = starValue < 2 ? ColorConstants.primaryColor : ColorConstants.primaryColor;
    var starIconsMap = [1, 2, 3, 4, 5].map((e) {
      if (starValue >= e) {
        return Icon(
          Icons.star_rate,
          color: color,
          size: size ?? 14,
        );
      } else if (starValue < e && starValue > e - 1) {
        return Icon(
          Icons.star_half,
          size: size ?? 14,
          color: color,
        );
      } else {
        return Icon(
          Icons.star_border,
          color: color,
          size: size ?? 14,
        );
      }
    }).toList();

    return Row(
        mainAxisAlignment: isCenter ?? false
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: starIconsMap);
  }

  // static Widget networkImage(String url,
  //     {double? height, double? width, int? cacheSize}) {
  //   return CachedNetworkImage(
  //     imageUrl: url,
  //     fit: BoxFit.cover,
  //     height: height,
  //     width: width,
  //     memCacheHeight: cacheSize,
  //     memCacheWidth: cacheSize,
  //     progressIndicatorBuilder: (context, url, downloadProgress) => Center(
  //         child: CircularProgressIndicator(value: downloadProgress.progress)),
  //     errorWidget: (context, url, error) => Image.asset(
  //       Assets.placeholder,
  //       fit: BoxFit.cover,
  //       height: height,
  //       width: width,
  //     ),
  //   );
  // }

  static profileMenu(
      {required String text,
      required IconData icon,
      required Callback press,
      required bool? isBadge,
      String? count}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: ColorConstants.primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.white,
        ),
        onPressed: press,
        child: Row(
          children: [
            Stack(
              children: [
                Icon(icon),
                Positioned(
                    right: 0,
                    top: 0,
                    child: isBadge == true
                        ? CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Text(
                              count!,
                              style:
                                  TextStyle(fontSize: 7, color: Colors.white),
                            ),
                            radius: 6,
                          )
                        : const SizedBox.shrink())
              ],
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: ColorConstants.primaryColor,
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF757575),
              size: 18,
            ),
          ],
        ),
      ),
    );
  }

  static void showSnackBar(String title, String message) {
    Get.snackbar(
      icon: Icon(
        title != "Success" ? Icons.info_outline : Icons.check_circle_outline,
        color: Colors.white,
      ),
      title,
      borderColor: Colors.white,
      borderWidth: 5,
      message,
      backgroundColor: title != "Success" ? Colors.red : Colors.green,
      colorText: Colors.white,
    );
  }

  // static Widget memberCard(
  //     Users user, Callback onTap, bool isLeader, Callback onIconTap) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10), color: Colors.white),
  //     child: ListTile(
  //       onTap: onTap,
  //       dense: true,
  //       horizontalTitleGap: 10,
  //       contentPadding: EdgeInsets.zero,
  //       leading: InkWell(
  //         onTap: () {
  //           if (user.image != null) {
  //             Get.to(() =>
  //                 ImagePreview(imageUrl: user.image ?? "", isNetwork: true));
  //           }
  //         },
  //         child: AdvancedAvatar(
  //           animated: true,
  //           size: 35,
  //           foregroundDecoration: BoxDecoration(
  //             shape: BoxShape.circle,
  //             border: Border.all(
  //               color: Colors.grey,
  //               width: 1.0,
  //             ),
  //           ),
  //           child: user.image == null
  //               ? Text(user.name!.substring(0, 1))
  //               : Widgets.networkImage(user.image ?? "",
  //                   width: 100, height: 100),
  //         ),
  //       ),
  //       title: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             user?.name ?? "",
  //             style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
  //           ),
  //           user?.isFriend == true
  //               ? const Text(
  //                   "Friend",
  //                   style: TextStyle(fontSize: 13, color: Colors.black54),
  //                 )
  //               : user.isAdmin == true?const Text(
  //             "Admin",
  //             style: TextStyle(fontSize: 13, color: Colors.black54),
  //           ):const SizedBox.shrink(),
  //         ],
  //       ),
  //       trailing: isLeader
  //           ? user.isAdmin == false?InkWell(
  //               onTap: onIconTap,
  //               child: const Icon(
  //                 Icons.remove_circle_outline,
  //                 size: 15,
  //                 color: Colors.red,
  //               ),
  //             ): const Icon(
  //         Icons.arrow_forward_outlined,
  //         size: 15,
  //         color: Colors.white,
  //       )
  //           : const Icon(
  //               Icons.arrow_forward_outlined,
  //               size: 15,
  //               color: Colors.black45,
  //             ),
  //     ),
  //   );
  // }
  // static Widget searchCard(Friend user, Callback onTap) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10), color: Colors.white),
  //     child: ListTile(
  //       onTap: onTap,
  //       dense: true,
  //       horizontalTitleGap: 10,
  //       contentPadding: EdgeInsets.zero,
  //       leading: InkWell(
  //         onTap: () {
  //           if (user?.image != null) {
  //             Get.to(() =>
  //                 ImagePreview(imageUrl: user.image ?? "", isNetwork: true));
  //           }
  //         },
  //         child: AdvancedAvatar(
  //           animated: true,
  //           size: 35,
  //           foregroundDecoration: BoxDecoration(
  //             shape: BoxShape.circle,
  //             border: Border.all(
  //               color: Colors.grey,
  //               width: 0.0,
  //             ),
  //           ),
  //           child: user?.image == null
  //               ? Text(user!.name!.substring(0, 1))
  //               : Widgets.networkImage(user.image ?? "",
  //               width: 100, height: 100),
  //         ),
  //       ),
  //       title: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             user?.username ?? "",
  //             style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
  //           ),
  //           SizedBox(height: 3,),
  //           Text(
  //             user?.name ?? "",
  //             style: const TextStyle(fontSize: 11,color: Colors.black54),
  //           ),
  //         ],
  //       ),
  //       trailing: const Icon(
  //         Icons.arrow_forward_outlined,
  //         size: 15,
  //         color: Colors.black45,
  //       ),
  //     ),
  //   );
  // }

  // static Widget friendCard(Friend user, Callback onTap) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10), color: Colors.white),
  //     child: ListTile(
  //       onTap: onTap,
  //       dense: true,
  //       horizontalTitleGap: 10,
  //       contentPadding: EdgeInsets.zero,
  //       leading: InkWell(
  //         onTap: () {
  //           if (user?.image != null) {
  //             Get.to(() =>
  //                 ImagePreview(imageUrl: user.image ?? "", isNetwork: true));
  //           }
  //         },
  //         child: AdvancedAvatar(
  //           animated: true,
  //           size: 35,
  //           foregroundDecoration: BoxDecoration(
  //             shape: BoxShape.circle,
  //             border: Border.all(
  //               color: Colors.grey,
  //               width: 0.0,
  //             ),
  //           ),
  //           child: user?.image == null
  //               ? Text(user!.name!.substring(0, 1))
  //               : Widgets.networkImage(user.image ?? "",
  //                   width: 100, height: 100),
  //         ),
  //       ),
  //       title: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             user?.name ?? "",
  //             style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
  //           ),
  //         ],
  //       ),
  //       trailing: const Icon(
  //         Icons.arrow_forward_outlined,
  //         size: 15,
  //         color: Colors.black45,
  //       ),
  //     ),
  //   );
  // }
  // static Widget groupFriend(Friend user, Callback onTap) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10), color: Colors.white),
  //     child: ListTile(
  //
  //       dense: true,
  //       horizontalTitleGap: 10,
  //       contentPadding: EdgeInsets.zero,
  //       leading: InkWell(
  //         onTap: () {
  //           if (user?.image != null) {
  //             Get.to(() =>
  //                 ImagePreview(imageUrl: user.image ?? "", isNetwork: true));
  //           }
  //         },
  //         child: AdvancedAvatar(
  //           animated: true,
  //           size: 35,
  //           foregroundDecoration: BoxDecoration(
  //             shape: BoxShape.circle,
  //             border: Border.all(
  //               color: Colors.grey,
  //               width: 0.0,
  //             ),
  //           ),
  //           child: user?.image == null
  //               ? Text(user!.name!.substring(0, 1))
  //               : Widgets.networkImage(user.image ?? "",
  //               width: 100, height: 100),
  //         ),
  //       ),
  //       title: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             user?.name ?? "",
  //             style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
  //           ),
  //           user?.isJoined==true?Text(
  //             "Already member of this group",
  //             style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w300,color:Colors.black45,fontStyle: FontStyle.italic),
  //           ):SizedBox.shrink(),
  //         ],
  //       ),
  //       trailing:  user?.isJoined==false?GestureDetector(onTap:onTap,child:  Icon(
  //         Icons.add,
  //         size: 25,
  //         color: Colors.black45,
  //       )):SizedBox(),
  //     ),
  //   );
  // }
  // static Widget inviteFriend(Friend user, Callback onTap) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10), color: Colors.white),
  //     child: ListTile(
  //
  //       dense: true,
  //       horizontalTitleGap: 10,
  //       contentPadding: EdgeInsets.zero,
  //       leading: InkWell(
  //         onTap: () {
  //           if (user?.image != null) {
  //             Get.to(() =>
  //                 ImagePreview(imageUrl: user.image ?? "", isNetwork: true));
  //           }
  //         },
  //         child: AdvancedAvatar(
  //           animated: true,
  //           size: 35,
  //           foregroundDecoration: BoxDecoration(
  //             shape: BoxShape.circle,
  //             border: Border.all(
  //               color: Colors.grey,
  //               width: 0.0,
  //             ),
  //           ),
  //           child: user?.image == null
  //               ? Text(user!.name!.substring(0, 1))
  //               : Widgets.networkImage(user.image ?? "",
  //               width: 100, height: 100),
  //         ),
  //       ),
  //       title: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             user?.name ?? "",
  //             style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
  //           ),
  //           user?.isJoined==true?Text(
  //             "Already invited",
  //             style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w300,color:Colors.black45,fontStyle: FontStyle.italic),
  //           ):SizedBox.shrink(),
  //         ],
  //       ),
  //       trailing:  user?.isJoined==false?GestureDetector(onTap:onTap,child:  Icon(
  //         Icons.add,
  //         size: 25,
  //         color: Colors.black45,
  //       )):SizedBox(),
  //     ),
  //   );
  // }

  // static Widget userCard(Friend user, Callback onTap, Callback onButtonTap) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10), color: Colors.white),
  //     child: ListTile(
  //       onTap: onTap,
  //       dense: true,
  //       horizontalTitleGap: 10,
  //       contentPadding: EdgeInsets.zero,
  //       leading: InkWell(
  //         onTap: () {
  //           if (user.image != null) {
  //             Get.to(() =>
  //                 ImagePreview(imageUrl: user.image ?? "", isNetwork: true));
  //           }
  //         },
  //         child: AdvancedAvatar(
  //           animated: true,
  //           size: 35,
  //           foregroundDecoration: BoxDecoration(
  //             shape: BoxShape.circle,
  //             border: Border.all(
  //               color: Colors.grey,
  //               width: 1.0,
  //             ),
  //           ),
  //           child: user.image == null
  //               ? Text(user.name!.substring(0, 1))
  //               : Widgets.networkImage(user.image ?? "",
  //                   width: 100, height: 100),
  //         ),
  //       ),
  //       title: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             user?.name ?? "",
  //             style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
  //           ),
  //         ],
  //       ),
  //       trailing: InkWell(
  //         onTap: onButtonTap,
  //         child: const Icon(
  //           Icons.remove_circle_outline_outlined,
  //           size: 18,
  //           color: Colors.red,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // static Widget notificationCard(
  //     {required Notifications user,
  //     required Callback onClick}) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10), color: Colors.white),
  //     child: ListTile(onTap: onClick,
  //       dense: true,
  //       horizontalTitleGap: 10,
  //       contentPadding: EdgeInsets.zero,
  //       leading: AdvancedAvatar(
  //         animated: true,
  //         size: 30,
  //         foregroundDecoration: BoxDecoration(
  //           shape: BoxShape.circle,
  //           border: Border.all(
  //             color: Colors.grey,
  //             width: 0.0,
  //           ),
  //         ),
  //         child: const Icon(
  //           CupertinoIcons.bell,
  //           size: 12,
  //           color: Colors.white,
  //         ),
  //       ),
  //       title: Text(
  //         user?.title ?? "",
  //       ),
  //       subtitle: Text(
  //         user?.body ?? "",
  //       ),
  //       trailing: Texts.textMedium(Utils.timeAgo(user?.createdAt ?? ""),
  //           color: Colors.black45, size: 9),
  //     ),
  //   );
  // }
  //
  // static Widget requestsCard(
  //     {required Requests user,
  //     required Callback onAccept,
  //     required Callback onReject}) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10), color: Colors.white),
  //     child: ListTile(
  //       dense: true,
  //       horizontalTitleGap: 10,
  //       contentPadding: EdgeInsets.zero,
  //       leading: InkWell(
  //         onTap: () {
  //           if (user.sender?.image != null) {
  //             Get.to(() => ImagePreview(
  //                 imageUrl: user.sender?.image ?? "" ?? "", isNetwork: true));
  //           }
  //         },
  //         child: AdvancedAvatar(
  //           animated: true,
  //           size: 45,
  //           foregroundDecoration: BoxDecoration(
  //             shape: BoxShape.circle,
  //             border: Border.all(
  //               color: Colors.grey,
  //               width: 0.0,
  //             ),
  //           ),
  //           child: user.sender?.image == null
  //               ? Text(user.sender!.name!.substring(0, 1))
  //               : Widgets.networkImage(user.sender?.image ?? "",
  //                   width: 100, height: 100),
  //         ),
  //       ),
  //       title: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             user?.sender?.name ?? "",
  //             style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
  //           ),
  //           user?.senderId != null
  //               ? Column(
  //                   children: [
  //                     const SizedBox(
  //                       height: 10,
  //                     ),
  //                     Row(children: [
  //                       InkWell(
  //                         onTap: onReject,
  //                         child: Container(
  //                           padding: const EdgeInsets.symmetric(
  //                               horizontal: 20, vertical: 5),
  //                           decoration: BoxDecoration(
  //                               color: Colors.grey.shade300,
  //                               borderRadius: BorderRadius.circular(10)),
  //                           child: const Text("Reject"),
  //                         ),
  //                       ),
  //                       const SizedBox(
  //                         width: 10,
  //                       ),
  //                       InkWell(
  //                         onTap: onAccept,
  //                         child: Container(
  //                           padding: const EdgeInsets.symmetric(
  //                               horizontal: 20, vertical: 5),
  //                           decoration: BoxDecoration(
  //                               color: ColorConstants.primaryColor,
  //                               borderRadius: BorderRadius.circular(10)),
  //                           child: const Text(
  //                             "Accept",
  //                             style: TextStyle(color: Colors.white),
  //                           ),
  //                         ),
  //                       )
  //                     ]),
  //                   ],
  //                 )
  //               : const SizedBox()
  //         ],
  //       ),
  //       trailing: Texts.textMedium(Utils.timeAgo(user?.createdAt ?? ""),
  //           color: Colors.black45, size: 9),
  //     ),
  //   );
  // }

  static Widget assetImage(String url, double width, double height) {
    return Image.asset(url, fit: BoxFit.cover, width: width, height: height);
  }

  static AppBar customAppBar({String? title, Widget? action}) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: true,
      leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 20,
          )),
      centerTitle: true,
      title:
          Texts.textMedium(title ?? "", size: 15, fontWeight: FontWeight.w500),
      actions: [action ?? SizedBox.shrink()],
    );
  }

  static hostCard() {
    return InkWell(
        onTap: () {

        },
        child: Stack(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstants.greyTextColor, // Light grey shadow
                      spreadRadius: 1, // How much the shadow spreads
                      blurRadius: 20, // How soft the shadow looks
                    ),
                  ],
                ),
                child: Row(children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Assets.profileImage))),
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Texts.textBlock("Luca Moretti",
                              fontWeight: FontWeight.w700,
                              maxline: 2,
                              color: Colors.black,
                              size: 15),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Texts.textBlock('Spain, Madrid',
                              fontWeight: FontWeight.w300,
                              color: Colors.black54,
                              size: 10),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: ColorConstants.primaryColor,
                                size: 12,
                              ),
                              Texts.textBlock(' 4.8 (53 reviews)',
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54,
                                  size: 10),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ])),
            Positioned(
              top: 10,
              right: 10,
              child: Row(children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 2,
                ),
                Text(" Active Now",
                    style: TextStyle(fontSize: 10, color: Colors.black87))
              ]),
            )
          ],
        ));
  }

  static void hideLoader() {
    // EasyLoading.dismiss();
  }
  //
  // static Widget widgetLoader() {
  //   return Center(
  //     child: CircularProgressIndicator(
  //       color: ColorConstants.whiteColor,
  //     ),
  //   );
  // }

  static Widget divider({bool isVertical = false}) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: isVertical
          ? const VerticalDivider(thickness: 1.0, color: Colors.black12)
          : const Divider(height: 1.0, thickness: 1.0, color: Colors.black12),
    );
  }

  // static void showLoader(String message) {
  //   EasyLoading.instance
  //     ..displayDuration = const Duration(milliseconds: 2000)
  //     ..loadingStyle = EasyLoadingStyle.custom
  //     ..backgroundColor = ColorConstants.primaryColor
  //     ..indicatorColor = Colors.white
  //     ..textColor = Colors.white
  //     ..maskColor = ColorConstants.primaryColor
  //     ..dismissOnTap = false;
  //
  //   EasyLoading.show(
  //     maskType: EasyLoadingMaskType.none,
  //     indicator: const CircularProgressIndicator(color: Colors.white),
  //     status: message,
  //   );
  // }

  static Future<bool> confirmationDialogue(
      BuildContext context, String title, String content) async {
    return await showDialog<bool>(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(title),
              content: Text(content),
              actions: [
                TextButton(
                  onPressed: () => Get.back(result: false),
                  child: Text('No',
                      style: TextStyle(color: ColorConstants.primaryColor)),
                ),
                TextButton(
                  onPressed: () => Get.back(result: true),
                  child: Text('Yes',
                      style: TextStyle(color: ColorConstants.primaryColor)),
                ),
              ],
            );
          },
        ) ??
        false;
  }

  static textTapped(
      {required String? title, required String? subTitle, required var onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: title ?? "",
                style: const TextStyle(
                  fontFamily: "RobotoRegular",
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Colors.black, // Change the color as needed
                ),
              ),
              TextSpan(
                text: " - ${subTitle ?? ""}",
                style: const TextStyle(
                  fontFamily: "RobotoRegular",
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Colors.black87, // Change the color as needed
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget BoxListItemType2(
      {required String? title1,
      required String? title3,
      Color? highlightColor,
      required String? image,
      required Function onClick}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: InkWell(
          onTap: () => onClick(),
          child: Row(
            children: <Widget>[
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(10),
              //   child: Widgets.networkImage(image ?? "",
              //       height: .20.sh, width: .30.sw),
              // ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Texts.textBlock(title1 ?? "",
                          fontWeight: FontWeight.w800,
                          color: Colors.black87,
                          maxline: 2,
                          size: 19),
                      Widgets.heightSpaceH1,
                      Texts.textBold(title3 ?? "",
                          fontWeight: FontWeight.w800,
                          color: ColorConstants.primaryColor,
                          size: 20),
                      Widgets.heightSpaceH1,
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 35,
                              height: 30,
                              decoration: BoxDecoration(
                                // color: ColorConstants.secondaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                CupertinoIcons.minus,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            height: 45,
                            child:
                                Center(child: Texts.textBlock("0", size: 20)),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 35,
                              height: 30,
                              decoration: BoxDecoration(
                                // color: ColorConstants.secondaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                CupertinoIcons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
