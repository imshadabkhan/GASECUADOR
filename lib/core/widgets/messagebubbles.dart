// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:indyguide/core/constants/assets_constants.dart';
// import 'package:indyguide/core/constants/color_constants.dart';
// import 'package:indyguide/core/widgets/widgets.dart';
//
// import 'text_widgets.dart';
//
// class MessageBubbles extends StatelessWidget {
//   MessageBubbles({this.isMe, this.sms, this.time});
//   bool? isMe;
//
//   String? sms;
//   String? time;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment:
//             isMe == true ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//         children: [
//           const SizedBox(
//             height: 5,
//           ),
//           isMe != true
//               ? Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     CircleAvatar(
//                       backgroundImage: AssetImage(Assets.profileImg1),
//                     ),
//                     Widgets.widthSpaceW2,
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                               decoration: BoxDecoration(
//                                   color: ColorConstants.blackColor,
//                                   borderRadius: const BorderRadius.only(
//                                       topRight: Radius.circular(10),
//                                       bottomLeft: Radius.circular(10),
//                                       bottomRight: Radius.circular(10))),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                   child:Texts.textNormal(sms.toString(),color: ColorConstants.blackColor,textAlign: TextAlign.start,size: 14),
//                               )),
//                           Texts.textNormal(time.toString(),
//                               size: 12, color: ColorConstants.textColor),
//                         ],
//                       ),
//                     ),
//                   ],
//                 )
//               : Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//
//                   Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Container(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child:Texts.textNormal(sms.toString(),color: ColorConstants.blackColor,textAlign: TextAlign.start,size: 14),
//                             ),
//                             decoration: BoxDecoration(
//                               color: ColorConstants.silverColor,
//                               borderRadius: const BorderRadius.only(
//                                 topLeft: Radius.circular(10),
//                                 bottomLeft: Radius.circular(10),
//                                 bottomRight: Radius.circular(10),
//                               ),
//                             ),
//                           ),
//                           Row(
//                             mainAxisAlignment:MainAxisAlignment.end,
//                           children: [
//                             Texts.textNormal(time.toString(),size: 12,color: ColorConstants.textColor),
//                             Widgets.widthSpaceW2,
//                             Image.asset(Assets.textSeenIcon,height: 15,width: 15,),
//
//                           ],),
//
//                         ],
//                       ),
//                     ),
//                   Widgets.widthSpaceW2,
//                   CircleAvatar(
//                     backgroundImage: AssetImage(Assets.profileImg1),
//                   ),
//
//                 ],
//               ),
//         ],
//       ),
//     );
//   }
// }
