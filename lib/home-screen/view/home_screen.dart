import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/app/profile-screen/profile_screen.dart';
import 'package:zoovie/component/home_screen_compo.dart';
import 'package:zoovie/const/const.dart';
import 'package:zoovie/const/resource.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelectedIndex = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    height: height(context) * 0.4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          R.ASSETS_CONTAINER_BG_DART_PNG,
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
