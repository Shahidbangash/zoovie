// import 'package:flutter/material.dart';
// import 'package:hugeicons/hugeicons.dart';
// import 'package:nb_utils/nb_utils.dart';
// import 'package:zoovie/home-screen/view/component/video_component.dart';
// import 'package:zoovie/profile-screen/profile_screen.dart';
// import 'package:zoovie/component/home_screen_compo.dart';
// import 'package:zoovie/const/app_color.dart';
// import 'package:zoovie/const/const.dart';
// import 'package:zoovie/const/resource.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int selectedIndex = 0;
//   bool isSelectedIndex = true;

//   void _onItemTapped(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomAppBar(
//         elevation: 10,
//         // clipBehavior: Clip.none,
//         surfaceTintColor: Colors.transparent,

//         color: Colors.transparent,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.home),
//                 onPressed: () => _onItemTapped(0),
//                 color: selectedIndex == 0 ? Colors.black : Colors.grey,
//               ),
//               IconButton(
//                 icon: const Icon(Icons.search),
//                 onPressed: () => _onItemTapped(1),
//                 color: selectedIndex == 1 ? Colors.black : Colors.grey,
//               ),
//               GestureDetector(
//                 onTap: () => _onItemTapped(2),
//                 child: Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: const BoxDecoration(
//                     color: Colors.red,
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Icon(
//                     Icons.add,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               IconButton(
//                 icon: const Icon(Icons.person),
//                 onPressed: () => _onItemTapped(3),
//                 color: selectedIndex == 3 ? Colors.black : Colors.grey,
//               ),
//               IconButton(
//                 icon: const HugeIcon(
//                   icon: HugeIcons.strokeRoundedImage01,
//                   color: AppColor.blackColortext,
//                 ),
//                 onPressed: () => _onItemTapped(4),
//               ),
//             ],
//           ),
//         ),
//       ),
//       backgroundColor: const Color(0xffF6F6F6),
//       body: Column(
//         children: [
//           SafeArea(
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 20,
//                       vertical: 15,
//                     ),
//                     width: width(context),
//                     height: height(context) * 0.35,
//                     decoration: const BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           // R.ASSETS_CONTAINER_BG_DART_PNG,
//                           R.ASSETS_CONTAINER_BG_PNG,
//                         ),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(
//                                 4,
//                               ),
//                               child: Image.asset(
//                                 R.ASSETS_IMAGE_LOGO_PNG,
//                                 fit: BoxFit.cover,
//                                 width: 28,
//                                 height: 28,
//                               ),
//                             ),
//                             InkWell(
//                               child: Image.asset(
//                                 R.ASSETS_FAV_ICON_PNG,
//                                 fit: BoxFit.cover,
//                                 width: 24,
//                                 height: 24,
//                               ),
//                             ),
//                           ],
//                         ),
//                         20.height,
//                         SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           child: Row(
//                             children: [
//                               HomeScreenComponent()
//                                   .tabBarButton(
//                                     context: context,
//                                     imagePath: R.ASSETS_TAB_BTN_IMG1_PNG,
//                                     isSelected: selectedIndex == 0,
//                                     onTap: () {
//                                       setState(
//                                         () {
//                                           // isSelectedIndex = !isSelectedIndex;
//                                           selectedIndex = 0;

//                                           log('values $isSelectedIndex');
//                                         },
//                                       );
//                                     },
//                                   )
//                                   .paddingRight(
//                                     15,
//                                   ),
//                               HomeScreenComponent()
//                                   .tabBarButton(
//                                     context: context,
//                                     imagePath: R.ASSETS_TAB_BTN_IMG2_PNG,
//                                     isSelected: selectedIndex == 1,
//                                     onTap: () {
//                                       setState(() {
//                                         selectedIndex = 1;
//                                         log('values $isSelectedIndex');
//                                       });
//                                     },
//                                   )
//                                   .paddingRight(
//                                     15,
//                                   ),
//                               HomeScreenComponent()
//                                   .tabBarButton(
//                                     context: context,
//                                     imagePath: R.ASSETS_TAB_BTN_IMG3_PNG,
//                                     isSelected: selectedIndex == 2,
//                                     onTap: () {
//                                       setState(() {
//                                         selectedIndex = 2;
//                                         log('values $isSelectedIndex');
//                                       });
//                                     },
//                                   )
//                                   .paddingRight(
//                                     15,
//                                   ),
//                             ],
//                           ),
//                         ),
//                         10.height,
//                         SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           child: Row(
//                             children: [
//                               HomeScreenComponent().profileCard(
//                                 imageUrl: R.ASSETS_CREATE_REEL_PNG,
//                                 name: 'create reel',
//                                 isCreate: true,
//                               ),
//                               15.width,
//                               HomeScreenComponent().profileCard(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute<ProfileScreen>(
//                                       builder: (context) =>
//                                           const ProfileScreen(),
//                                     ),
//                                   );
//                                 },

//                                 imageUrl: R.ASSETS_PROFILE_CARD2_PNG,
//                                 name: 'Emma',
//                                 // isCreate: true,
//                               ),
//                               15.width,
//                               HomeScreenComponent().profileCard(
//                                 // imageUrl: R.ASSETS_CREATE_REEL_PNG,
//                                 imageUrl: R.ASSETS_PROFILE_CARD4_PNG,
//                                 name: 'Emma',
//                                 // isCreate: true,
//                               ),
//                               15.width,
//                               HomeScreenComponent().profileCard(
//                                 // imageUrl: R.ASSETS_CREATE_REEL_PNG,
//                                 imageUrl: R.ASSETS_PROFILE_CARD2_PNG,
//                                 name: 'Emma',
//                                 // isCreate: true,
//                               ),
//                               15.width,
//                               HomeScreenComponent().profileCard(
//                                 // imageUrl: R.ASSETS_CREATE_REEL_PNG,
//                                 imageUrl: R.ASSETS_PROFILE_CARD4_PNG,
//                                 name: 'Emma',
//                                 // isCreate: true,
//                               ),
//                               15.width,
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: height(context) * 0.5,
//                     child: VideoPostComponent(),
//                   ),
//                   SizedBox(
//                     height: height(context) * 0.5,
//                     child: VideoPostComponent(),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/component/custom_like_button.dart';
import 'package:zoovie/home-screen/view/component/video_component.dart';
import 'package:zoovie/profile-screen/profile_screen.dart';
import 'package:zoovie/component/home_screen_compo.dart';
import 'package:zoovie/const/app_color.dart';
import 'package:zoovie/const/const.dart';
import 'package:zoovie/const/resource.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        surfaceTintColor: Colors.transparent,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () => _onItemTapped(0),
                color: selectedIndex == 0 ? Colors.black : Colors.grey,
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => _onItemTapped(1),
                color: selectedIndex == 1 ? Colors.black : Colors.grey,
              ),
              GestureDetector(
                onTap: () => _onItemTapped(2),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () => _onItemTapped(3),
                color: selectedIndex == 3 ? Colors.black : Colors.grey,
              ),
              IconButton(
                icon: const HugeIcon(
                  icon: HugeIcons.strokeRoundedImage01,
                  color: AppColor.blackColortext,
                ),
                onPressed: () => _onItemTapped(4),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xffF6F6F6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(R.ASSETS_CONTAINER_BG_PNG),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            R.ASSETS_IMAGE_LOGO_PNG,
                            fit: BoxFit.cover,
                            width: 28,
                            height: 28,
                          ),
                        ),
                        const CustomLikeButton(
                          icon: Icon(
                            Icons.favorite_outline,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          HomeScreenComponent()
                              .tabBarButton(
                                context: context,
                                imagePath: R.ASSETS_TAB_BTN_IMG1_PNG,
                                isSelected: selectedIndex == 0,
                                onTap: () {
                                  _onItemTapped(0);
                                },
                              )
                              .paddingRight(15),
                          HomeScreenComponent()
                              .tabBarButton(
                                context: context,
                                imagePath: R.ASSETS_TAB_BTN_IMG2_PNG,
                                isSelected: selectedIndex == 1,
                                onTap: () {
                                  _onItemTapped(1);
                                },
                              )
                              .paddingRight(15),
                          HomeScreenComponent()
                              .tabBarButton(
                                context: context,
                                imagePath: R.ASSETS_TAB_BTN_IMG3_PNG,
                                isSelected: selectedIndex == 2,
                                onTap: () {
                                  _onItemTapped(2);
                                },
                              )
                              .paddingRight(15),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          HomeScreenComponent().profileCard(
                            imageUrl: R.ASSETS_CREATE_REEL_PNG,
                            name: 'Create Reel',
                            isCreate: true,
                          ),
                          const SizedBox(width: 15),
                          HomeScreenComponent().profileCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<ProfileScreen>(
                                  builder: (context) => const ProfileScreen(),
                                ),
                              );
                            },
                            imageUrl: R.ASSETS_PROFILE_CARD2_PNG,
                            name: 'Emma',
                          ),
                          const SizedBox(width: 15),
                          HomeScreenComponent().profileCard(
                            imageUrl: R.ASSETS_PROFILE_CARD4_PNG,
                            name: 'Emma',
                          ),
                          const SizedBox(width: 15),
                          HomeScreenComponent().profileCard(
                            imageUrl: R.ASSETS_PROFILE_CARD2_PNG,
                            name: 'Emma',
                          ),
                          const SizedBox(width: 15),
                          HomeScreenComponent().profileCard(
                            imageUrl: R.ASSETS_PROFILE_CARD4_PNG,
                            name: 'Emma',
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: const VideoPostComponent(
                  videoPath: R.ASSETS_DARK_MP4,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: VideoPostComponent(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
