// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:indyguide/core/constants/color_constants.dart';
// import 'package:indyguide/core/widgets/text_widgets.dart';
//
// import '../../../../../../../core/widgets/widgets.dart';
//
//
// var KTextFieldDecoration = InputDecoration(
//   hintText: "Message...",
//   hintStyle: TextStyle(color: Colors.grey),  // Set a visible hint text color
//   contentPadding: const EdgeInsets.all(10),
//
//   // Rounded border without any visible border line
//   border: OutlineInputBorder(
//     borderRadius: BorderRadius.circular(30.0),
//     borderSide: BorderSide.none,
//   ),
//
//   // Background fill color for the text field (ensure contrast)
//   filled: true,
//   fillColor: Colors.white,  // Use white or a contrasting color
//
//   // Row containing two suffix icons
//   suffixIcon: Row(
//     mainAxisSize: MainAxisSize.min, // Prevents stretching
//     children: [
//       Icon(Icons.photo_library_outlined, color: Colors.black), // Set icon color
//       SizedBox(width: 10),
//       Icon(Icons.add, color: Colors.black), // Set icon color
//
//     ],
//   ),
// );
//
//
// class MessageSendingTile extends StatelessWidget {
//   MessageSendingTile({this.controller, this.onPressed});
//   final TextEditingController? controller;
//   final VoidCallback? onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         left: 8.0,
//         right: 8.0,
//         bottom: 8.0,
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               controller: controller,
//               decoration: KTextFieldDecoration,
//               style: const TextStyle(
//                 color: Colors.black,  // Set the text color explicitly
//                 fontSize: 16,         // Adjust font size
//               ),
//               cursorColor: Colors.blue, // Ensure cursor is visible
//             ),
//           ),
//
// TextButton(onPressed: (){}, child: Texts.textMedium("SEND",size: 15)),
//
//         ],
//       ),
//     );
//   }
// }
