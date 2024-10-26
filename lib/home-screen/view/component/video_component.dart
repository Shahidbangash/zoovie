// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// import 'package:cached_network_image/cached_network_image.dart';

// class VideoPostComponent extends StatefulWidget {
//   @override
//   _VideoPostComponentState createState() => _VideoPostComponentState();
// }

// class _VideoPostComponentState extends State<VideoPostComponent> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//       'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
//     )..initialize().then((_) {
//         setState(() {}); // To refresh the UI after initialization
//         _controller.play(); // Auto play the video
//       });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         // Background Video
//         _controller.value.isInitialized
//             ? AspectRatio(
//                 aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(_controller),
//               )
//             : Center(child: CircularProgressIndicator()),

//         // Overlay content on top of the video
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             // Spacer at the top
//             SizedBox(height: 10),
//             Expanded(child: Container()),

//             // Bottom user-related info and description
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // User info and Connect button
//                   Row(
//                     children: [
//                       // User Avatar
//                       CircleAvatar(
//                         backgroundImage: CachedNetworkImageProvider(
//                           'https://randomuser.me/api/portraits/men/1.jpg',
//                         ),
//                         radius: 24,
//                       ),
//                       SizedBox(width: 10),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Jedi Park',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                           Text(
//                             '2 min ago · 213 Derrick Street, Boston',
//                             style: TextStyle(
//                               color: Colors.white70,
//                               fontSize: 12,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Spacer(),
//                       ElevatedButton(
//                         onPressed: () {},
//                         child: Text('Connect'),
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.white,
//                           foregroundColor: Colors.black,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10),
//                   // Video Description
//                   Text(
//                     'Video caption will be there show...',
//                     style: TextStyle(color: Colors.white, fontSize: 14),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),

//         // Right-side icons for like, comment, etc.
//         Positioned(
//           right: 16,
//           bottom: 160, // Adjust this based on your design
//           child: Column(
//             children: [
//               // Like Icon
//               Icon(Icons.favorite, color: Colors.white, size: 28),
//               SizedBox(height: 4),
//               Text('10.2k', style: TextStyle(color: Colors.white)),
//               SizedBox(height: 16),

//               // Comment Icon
//               Icon(Icons.comment, color: Colors.white, size: 28),
//               SizedBox(height: 4),
//               Text('2.5k', style: TextStyle(color: Colors.white)),
//               SizedBox(height: 16),

//               // Share Icon
//               Icon(Icons.share, color: Colors.white, size: 28),
//               SizedBox(height: 16),

//               // VIP Icon (custom icon or SVG)
//               Icon(Icons.star, color: Colors.white, size: 28),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
