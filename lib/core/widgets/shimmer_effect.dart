//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
//
// class ShimmerListSkeleton extends StatelessWidget {
//   const ShimmerListSkeleton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//       baseColor: Colors.grey[300]!,
//       highlightColor: Colors.grey[100]!,
//       child: ListView.builder(
//         shrinkWrap: true,
//         padding: EdgeInsets.zero,
//         itemCount: 13,
//         itemBuilder: (_, __) => Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8.0),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CircleAvatar(radius: 20,
//
//                 backgroundColor: Colors.white,
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 5.0),
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Container(
//                       width: double.infinity,
//                       height: 8.0,
//                       color: Colors.white,
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(vertical: 2.0),
//                     ),
//                     Container(
//                       width: double.infinity,
//                       height: 8.0,
//                       color: Colors.white,
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(vertical: 2.0),
//                     ),
//                     Container(
//                       width: 40.0,
//                       height: 8.0,
//                       color: Colors.white,
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ShimmerPopularSkeleton extends StatelessWidget {
//   const ShimmerPopularSkeleton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//       baseColor: Colors.grey[300]!,
//       highlightColor: Colors.grey[100]!,
//       child: Container(
//         height: .30.sh,
//         child: ListView(
//           shrinkWrap: true,
//           scrollDirection: Axis.horizontal,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Container(
//                       width: .5.sw,
//                       height: .20.sh,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 8.0),
//                   ),
//                   Container(
//                     width: .5.sw,
//                     height: 8.0,
//                     color: Colors.white,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 2.0),
//                   ),
//                   Container(
//                     width: .5.sw,
//                     height: 8.0,
//                     color: Colors.white,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 2.0),
//                   ),
//                   Container(
//                     width: 40.0,
//                     height: 8.0,
//                     color: Colors.white,
//                   )
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Container(
//                       width: .5.sw,
//                       height: .20.sh,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 8.0),
//                   ),
//                   Container(
//                     width: .5.sw,
//                     height: 8.0,
//                     color: Colors.white,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 2.0),
//                   ),
//                   Container(
//                     width: .5.sw,
//                     height: 8.0,
//                     color: Colors.white,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 2.0),
//                   ),
//                   Container(
//                     width: 40.0,
//                     height: 8.0,
//                     color: Colors.white,
//                   )
//                 ],
//               ),
//             ),  Padding(
//               padding: const EdgeInsets.all(15),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Container(
//                       width: .5.sw,
//                       height: .20.sh,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 8.0),
//                   ),
//                   Container(
//                     width: .5.sw,
//                     height: 8.0,
//                     color: Colors.white,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 2.0),
//                   ),
//                   Container(
//                     width: .5.sw,
//                     height: 8.0,
//                     color: Colors.white,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 2.0),
//                   ),
//                   Container(
//                     width: 40.0,
//                     height: 8.0,
//                     color: Colors.white,
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ShimmerSpotListSkeleton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//       baseColor: Colors.grey[300]!,
//       highlightColor: Colors.grey[100]!,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ListView.builder(
//             shrinkWrap: true,
//             padding: EdgeInsets.zero,
//             itemCount: 10,
//             itemBuilder: (_, __) => Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Container(
//                       width: 1.sw,
//                       height: .20.sh,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 8.0),
//                   ),
//                   Container(
//                     width: double.infinity,
//                     height: 8.0,
//                     color: Colors.white,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 2.0),
//                   ),
//                   Container(
//                     width: double.infinity,
//                     height: 8.0,
//                     color: Colors.white,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 2.0),
//                   ),
//                   Container(
//                     width: 40.0,
//                     height: 8.0,
//                     color: Colors.white,
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ShimmerProfileListSkeleton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//       baseColor: Colors.grey[300]!,
//       highlightColor: Colors.grey[100]!,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               width: 1.sw,
//               height: .30.sh,
//               color: Colors.white,
//             ),
//           ),
//           Widgets.heightSpaceH2,
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               width: 1.sw,
//               height: .20.sh,
//               color: Colors.white,
//             ),
//           ),
//           Widgets.heightSpaceH2,
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               width: 1.sw,
//               height: .20.sh,
//               color: Colors.white,
//             ),
//           ),
//           Widgets.heightSpaceH2,
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               width: 1.sw,
//               height: .20.sh,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ShimmerGroupDetailSkeleton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//       baseColor: Colors.grey[300]!,
//       highlightColor: Colors.grey[100]!,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               width: 1.sw,
//               height: .20.sh,
//               color: Colors.white,
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 8.0),
//           ),
//           Container(
//             width: double.infinity,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: double.infinity,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: 40.0,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 10.0),
//           ),
//           Container(
//             width: double.infinity,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: double.infinity,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: 40.0,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: 1.sw,
//             height: 18.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 10.0),
//           ),
//           ShimmerListSkeleton()
//         ],
//       ),
//     );
//   }
// }
//
// class ShimmerEventDetailSkeleton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//       baseColor: Colors.grey[300]!,
//       highlightColor: Colors.grey[100]!,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               width: 1.sw,
//               height: .42.sh,
//               color: Colors.white,
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 8.0),
//           ),
//           Container(
//             width: double.infinity,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: double.infinity,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: 40.0,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 10.0),
//           ),
//           Container(
//             width: double.infinity,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: double.infinity,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: 40.0,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: 1.sw,
//             height: 18.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 10.0),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: double.infinity,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: 40.0,
//             height: 8.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.0),
//           ),
//           Container(
//             width: 1.sw,
//             height: 18.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 10.0),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ShimmerMemberDetailSkeleton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//       baseColor: Colors.grey[300]!,
//       highlightColor: Colors.grey[100]!,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           CircleAvatar(
//             radius: 75,
//             backgroundColor: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 8.0),
//           ),
//           Container(
//             width: 200,
//             height: 10.0,
//             color: Colors.white,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 15.0),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 100,
//                 height: 8.0,
//                 color: Colors.white,
//               ),
//               SizedBox(
//                 width: 50,
//               ),
//               Container(
//                 width: 100,
//                 height: 8.0,
//                 color: Colors.white,
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: ShimmerListSkeleton(),
//           )
//         ],
//       ),
//     );
//   }
// }
