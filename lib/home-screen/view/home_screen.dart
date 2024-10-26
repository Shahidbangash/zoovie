import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/app/profile-screen/profile_screen.dart';
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
  bool isSelectedIndex = true;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        // clipBehavior: Clip.none,
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
                color: _selectedIndex == 0 ? Colors.black : Colors.grey,
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => _onItemTapped(1),
                color: _selectedIndex == 1 ? Colors.black : Colors.grey,
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
                color: _selectedIndex == 3 ? Colors.black : Colors.grey,
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
      body: Column(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    width: width(context),
                    height: height(context) * 0.3,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          // R.ASSETS_CONTAINER_BG_DART_PNG,
                          R.ASSETS_CONTAINER_BG_PNG,
                        ),
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
                              borderRadius: BorderRadius.circular(
                                4,
                              ),
                              child: Image.asset(
                                R.ASSETS_IMAGE_LOGO_PNG,
                                fit: BoxFit.cover,
                                width: 28,
                                height: 28,
                              ),
                            ),
                            InkWell(
                              child: Image.asset(
                                R.ASSETS_FAV_ICON_PNG,
                                fit: BoxFit.cover,
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ],
                        ),
                        20.height,
                        Row(
                          children: [
                            HomeScreenComponent().tabBarButton(
                              context: context,
                              imagePath: R.ASSETS_TAB_BTN_IMG1_PNG,
                              isSelected: isSelectedIndex,
                              onTap: () {
                                setState(() {
                                  isSelectedIndex = !isSelectedIndex;
                                  log('values $isSelectedIndex');
                                });
                              },
                            ),
                            HomeScreenComponent().tabBarButton(
                              context: context,
                              imagePath: R.ASSETS_TAB_BTN_IMG1_PNG,
                              isSelected: isSelectedIndex,
                              onTap: () {
                                setState(() {
                                  isSelectedIndex = !isSelectedIndex;
                                  log('values $isSelectedIndex');
                                });
                              },
                            ),
                            HomeScreenComponent().tabBarButton(
                              context: context,
                              imagePath: R.ASSETS_TAB_BTN_IMG1_PNG,
                              isSelected: isSelectedIndex,
                              onTap: () {
                                setState(() {
                                  isSelectedIndex = !isSelectedIndex;
                                  log('values $isSelectedIndex');
                                });
                              },
                            ),
                          ],
                        ),
                        10.height,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              HomeScreenComponent().profileCard(
                                imageUrl: R.ASSETS_CREATE_REEL_PNG,
                                name: 'create reel',
                                isCreate: true,
                              ),
                              15.width,
                              HomeScreenComponent().profileCard(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<ProfileScreen>(
                                      builder: (context) =>
                                          const ProfileScreen(),
                                    ),
                                  );
                                },

                                imageUrl: R.ASSETS_PROFILE_CARD2_PNG,
                                name: 'Emma',
                                // isCreate: true,
                              ),
                              15.width,
                              HomeScreenComponent().profileCard(
                                // imageUrl: R.ASSETS_CREATE_REEL_PNG,
                                imageUrl: R.ASSETS_PROFILE_CARD4_PNG,
                                name: 'Emma',
                                // isCreate: true,
                              ),
                              15.width,
                              HomeScreenComponent().profileCard(
                                // imageUrl: R.ASSETS_CREATE_REEL_PNG,
                                imageUrl: R.ASSETS_PROFILE_CARD2_PNG,
                                name: 'Emma',
                                // isCreate: true,
                              ),
                              15.width,
                              HomeScreenComponent().profileCard(
                                // imageUrl: R.ASSETS_CREATE_REEL_PNG,
                                imageUrl: R.ASSETS_PROFILE_CARD4_PNG,
                                name: 'Emma',
                                // isCreate: true,
                              ),
                              15.width,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: height(context) *
                  //       0.5, // Add height for TikTok background
                  //   child: VideoPostComponent(),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
