// import 'package:flutter/material.dart';
// import 'package:indyguide/core/constants/assets_constants.dart';
// import 'package:indyguide/core/constants/color_constants.dart';
// import 'package:indyguide/core/widgets/text_widgets.dart';
// import 'package:indyguide/core/widgets/widgets.dart';
//
// class ReviewSection extends StatelessWidget {
//   ReviewSection(
//       {this.image, this.name, this.dateAndTime, this.comment, this.postImage});
//
//   String? image;
//   String? name;
//   String? dateAndTime;
//   String? comment;
//   String? postImage;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage(image!),
//               radius: 20,
//             ),
//             Widgets.widthSpaceW2,
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Texts.textBlock(
//                   name!,
//                   size: 13,
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   dateAndTime!,
//                   style: TextStyle(
//                       fontSize: 9,
//                       color: Colors.black54,
//                       fontFamily: "InstrumentSansRegular"),
//                 ),
//               ],
//             )
//           ],
//         ),
//         Widgets.heightSpaceH1,
//         Widgets.buildRatingStar(5),
//         Widgets.heightSpaceH1,
//         Texts.textMedium(comment!, size: 12, color: ColorConstants.textColor),
//         Widgets.heightSpaceH2,
//         postImage == null
//             ? Container()
//             : Image.asset(
//                 postImage ?? '',
//                 height: 100,
//               ),
//       ],
//     );
//   }
// }
