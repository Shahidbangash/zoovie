import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/profile-screen/component/event_component.dart';
import 'package:zoovie/profile-screen/component/polygon_component.dart';
import 'package:zoovie/profile-screen/component/profile_info.dart';
import 'package:zoovie/profile-screen/component/profile_tab_button.dart';
import 'package:zoovie/component/text_component.dart';
import 'package:zoovie/const/app_color.dart';
import 'package:zoovie/const/const.dart';
import 'package:zoovie/const/resource.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentIndex = 0;
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height(context) * 0.25,
                  width: width(context),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        // R.ASSETS_PROFILE_CARD2_PNG,
                        R.ASSETS_PROFILE_SCREEN_CONTAINER_PNG,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  // left: 10,
                  // right: 10,
                  bottom: -80,
                  child: SizedBox(
                    width: width(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const PolygonShapeComponent(
                          imageUrl: R.ASSETS_PROFILE_IMG_PNG,
                        ).center(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            100.height,
            const TextComponent(
              title: 'John Don',
              textSize: 16,
              textFontweight: FontWeight.w600,
              textColor: AppColor.blackColortext,
            ),
            const TextComponent(
              title: 'Johndoe@gmail.com',
            ),
            // 10.height,
            const TextComponent(
              title: 'Bridge Street, West Jeromy',
            ),
            20.height,

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProfileSection(),
                    30.height,
                    Row(
                      children: [
                        ProfileSCreenComponent()
                            .tabButton(
                              context: context,
                              title: 'Posts',
                              onTap: () {
                                setState(() {
                                  // isSelected = !isSelected;
                                  currentIndex = 0;
                                });
                              },
                              // isSelected: isSelected,
                              isSelected: currentIndex == 0,
                            )
                            .paddingRight(
                              15,
                            ),
                        ProfileSCreenComponent()
                            .tabButton(
                              context: context,
                              onTap: () {
                                setState(() {
                                  currentIndex = 1;
                                });
                              },
                              isSelected: currentIndex == 1,
                              title: 'Events',
                            )
                            .paddingRight(
                              15,
                            ),
                        ProfileSCreenComponent()
                            .tabButton(
                              context: context,
                              title: 'Replies',
                              onTap: () {
                                setState(() {
                                  currentIndex = 2;
                                });
                              },
                              isSelected: currentIndex == 2,
                            )
                            .paddingRight(
                              15,
                            ),
                        ProfileSCreenComponent()
                            .tabButton(
                              context: context,
                              title: 'Likes',
                              onTap: () {
                                setState(() {
                                  currentIndex = 3;
                                });
                              },
                              isSelected: currentIndex == 3,

                              // isSelected: true,
                            )
                            .paddingRight(
                              15,
                            ),
                      ],
                    ),
                    20.height,
                    EventComponent(),
                    30.height,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
