// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
//
//
//
// import '../constants/color_constants.dart';
//
// import 'dart:math' as math;
//
// import 'image_preview.dart'; // import this
//
// class ReceivedBubbleChat extends StatelessWidget {
//   final Chat message;
//   Callback? onAvatarTap;
//   ReceivedBubbleChat({required this.message, required this.onAvatarTap});
//
//   @override
//   Widget build(BuildContext context) {
//     final messageTextGroup = Flexible(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Transform(
//               alignment: Alignment.center,
//               transform: Matrix4.rotationY(math.pi),
//               child: CustomPaint(
//                 painter: Triangle(ColorConstants.blackColor),
//               ),
//             ),
//             Flexible(
//               child: Container(
//                 padding:
//                 const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
//                 decoration:  BoxDecoration(
//                   color: ColorConstants.blackColor,
//                   borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(18),
//                     bottomLeft: Radius.circular(18),
//                     bottomRight: Radius.circular(18),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//
//                     Text(
//                       message.text ?? "",
//                       style: const TextStyle(color: Colors.white, fontSize: 15,fontFamily: "LatoRegular"),
//                     ),
//                     const SizedBox(
//                       height: 4,
//                     ),
//                     Text(
//                       "02:00 PM",
//                       style: const TextStyle(color: Colors.white70, fontSize: 8),
//                       textAlign: TextAlign.end,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ));
//
//     return Container(
//       margin: const EdgeInsets.only(right: 20.0, left: 5, top: 0, bottom: 5),
//       padding: const EdgeInsets.only(right: 20.0, left: 5, top: 5, bottom: 5),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           InkWell(
//             onTap: onAvatarTap,
//             child:CircleAvatar(radius:16,backgroundImage: AssetImage(Assets.profileImg1),),
//           ),
//           const SizedBox(
//             width: 5,
//           ),
//           messageTextGroup,
//         ],
//       ),
//     );
//   }
// }
//
// class SentMessage extends StatelessWidget {
//   final Chat message;
//   const SentMessage({
//     required this.message,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final messageTextGroup = Flexible(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Flexible(
//               child: Container(
//                 padding:
//                 const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
//                 decoration: BoxDecoration(
//                   color:ColorConstants.greyColor,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(18),
//                     bottomLeft: Radius.circular(18),
//                     bottomRight: Radius.circular(18),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Text(
//                       message.text ?? "",
//                       style: const TextStyle(color: Colors.black87, fontSize: 15,fontFamily: "LatoRegular"),
//                     ),
//                     const SizedBox(
//                       height: 4,
//                     ),
//                     Row(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                             "02:00 PM  ",
//                           style: const TextStyle(color: Colors.black45, fontSize: 8),
//                           textAlign: TextAlign.start,
//                         ),Icon(Icons.check,color: Colors.blueAccent,size: 8,)
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Transform(
//               alignment: Alignment.center,
//               transform: Matrix4.rotationY(math.pi),
//               child: CustomPaint(
//                 painter: Triangle(ColorConstants.greyColor),
//               ),
//             ),
//           ],
//         ));
//
//     return Padding(
//       padding: EdgeInsets.only(right: 18.0, left: 50, top: 10, bottom: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           SizedBox(height: 30),
//           messageTextGroup,
//         ],
//       ),
//     );
//   }
// }
