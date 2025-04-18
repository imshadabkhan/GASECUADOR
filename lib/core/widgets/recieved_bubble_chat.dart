//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
//
// import '../constants/color_constants.dart';
// import '../utils/triangle.dart';
// import 'dart:math' as math;
//
// import 'image_preview.dart'; // import this
//
// class ReceivedBubbleChat extends StatelessWidget {
//   final Chat message;
//   Callback? onAvatarTap;
//    ReceivedBubbleChat({required this.message, required this.onAvatarTap});
//
//   @override
//   Widget build(BuildContext context) {
//     final messageTextGroup = Flexible(
//         child: Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Transform(
//           alignment: Alignment.center,
//           transform: Matrix4.rotationY(math.pi),
//           child: CustomPaint(
//             painter: Triangle(Colors.white),
//           ),
//         ),
//         Flexible(
//           child: Container(
//             padding:
//                 const EdgeInsets.only(top: 7, bottom: 7, left: 10, right: 20),
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(18),
//                 bottomLeft: Radius.circular(18),
//                 bottomRight: Radius.circular(18),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   message.sender?.name ?? "",
//                   style: const TextStyle(
//                       color: Colors.black54,
//                       fontSize: 9,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(
//                   height: 3,
//                 ),
//                 Text(
//                   message.text ?? "",
//                   style: const TextStyle(color: Colors.black87, fontSize: 17),
//                 ),
//                 const SizedBox(
//                   height: 4,
//                 ),
//                 Text(
//                   Utils.getTimeAgo(message.timestamp ?? 0),
//                   style: const TextStyle(color: Colors.black45, fontSize: 8),
//                   textAlign: TextAlign.end,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ],
//     ));
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
//             child: AdvancedAvatar(
//               size: 20,
//               foregroundDecoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(
//                   color: ColorConstants.primaryColor,
//                   width: 1.0,
//                 ),
//               ),
//               child:message.sender?.avatar==""? Text(message.sender!.name!.substring(0, 1)):Widgets.networkImage(message.sender?.avatar ?? "",
//                   width: 100, height: 100),
//             ),
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
//       mainAxisAlignment: MainAxisAlignment.end,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Flexible(
//           child: Container(
//             padding:
//                 const EdgeInsets.only(top: 7, bottom: 7, left: 10, right: 20),
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(18),
//                 bottomLeft: Radius.circular(18),
//                 bottomRight: Radius.circular(18),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   message.text ?? "",
//                   style: const TextStyle(color: Colors.black87, fontSize: 17),
//                 ),
//                 const SizedBox(
//                   height: 4,
//                 ),
//                 Text(
//                   Utils.getTimeAgo(message.timestamp ?? 0),
//                   style: const TextStyle(color: Colors.black45, fontSize: 8),
//                   textAlign: TextAlign.end,
//                 )
//               ],
//             ),
//           ),
//         ),
//         Transform(
//           alignment: Alignment.center,
//           transform: Matrix4.rotationY(math.pi),
//           child: CustomPaint(
//             painter: Triangle(Colors.white),
//           ),
//         ),
//       ],
//     ));
//
//     return Padding(
//       padding: EdgeInsets.only(right: 18.0, left: 50, top: 5, bottom: 5),
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
