// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:zoovie/component/app_component.dart';
// import 'package:zoovie/const/app_color.dart';

// class EventDiscoveryScreen extends StatelessWidget {
//   const EventDiscoveryScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Header Section
//             Container(
//               width: double.infinity,
//               color: AppColor.primaryColor,
//               padding: EdgeInsets.only(top: 40.h, bottom: 20.h),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16).r,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(
//                           Icons.king_bed,
//                           color: Colors.white,
//                           size: 28.sp,
//                         ),
//                         Icon(
//                           Icons.notifications,
//                           color: Colors.white,
//                           size: 28.sp,
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16).r,
//                     child: Text(
//                       'Discover Amazing Event\nNear By You.',
//                       style: GoogleFonts.inter(
//                         fontSize: 24.sp,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16).r,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Search...',
//                         hintStyle: GoogleFonts.inter(
//                           color: Colors.grey[300],
//                           fontSize: 14.sp,
//                         ),
//                         filled: true,
//                         fillColor: Colors.white,
//                         prefixIcon:
//                             Icon(Icons.search, color: AppColor.greyTextColor),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16).r,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         _buildCategoryChip('Music', Icons.music_note),
//                         _buildCategoryChip('Arts', Icons.palette),
//                         _buildCategoryChip('Fashion', Icons.checkroom),
//                         _buildCategoryChip('Party', Icons.celebration),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // Latest Event Section
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 16, vertical: 8).r,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Latest Event',
//                     style: GoogleFonts.inter(
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'See All',
//                       style: GoogleFonts.inter(
//                         fontSize: 14.sp,
//                         color: AppColor.primaryColor,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             _buildEventList(),

//             // Nearby Event Section
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 16, vertical: 8).r,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Nearby Event',
//                     style: GoogleFonts.inter(
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'See All',
//                       style: GoogleFonts.inter(
//                         fontSize: 14.sp,
//                         color: AppColor.primaryColor,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             _buildEventList(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCategoryChip(String label, IconData icon) {
//     return Chip(
//       label: Row(
//         children: [
//           Icon(icon, size: 16.sp, color: AppColor.primaryColor),
//           const SizedBox(width: 4),
//           Text(
//             label,
//             style: GoogleFonts.inter(
//               fontSize: 12.sp,
//               color: AppColor.primaryColor,
//             ),
//           ),
//         ],
//       ),
//       backgroundColor: Colors.white,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//         side: BorderSide(color: AppColor.primaryColor),
//       ),
//     );
//   }

//   Widget _buildEventList() {
//     return Container(
//       height: 150.h,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: 4,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(left: 16, right: 8).r,
//             child: Container(
//               width: 220.w,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 image: DecorationImage(
//                   image: AssetImage(
//                       'assets/event_placeholder.png'), // Replace with actual image asset
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0).r,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Event Title',
//                       style: GoogleFonts.inter(
//                         fontSize: 14.sp,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       'Sat, Jun 10-10:00 AM-11:00 PM',
//                       style: GoogleFonts.inter(
//                         fontSize: 10.sp,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Row(
//                       children: [
//                         Icon(Icons.location_on,
//                             size: 12.sp, color: Colors.white),
//                         const SizedBox(width: 4),
//                         Expanded(
//                           child: Text(
//                             '50 Minocra Ave, Coral Gables',
//                             style: GoogleFonts.inter(
//                               fontSize: 10.sp,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w400,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
