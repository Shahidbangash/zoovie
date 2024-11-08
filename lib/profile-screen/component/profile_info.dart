import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/component/text_component.dart';
import 'package:zoovie/const/app_color.dart';
import 'package:zoovie/setting/setting_screen.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xffD3D3FE),
            Color(0xffFFFFFF),
            Color(0xffFFE7E8),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Two lines of long text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextComponent(
                title: 'Here to have a FUN time not a long time',
                textColor: AppColor.blackColorText,
                textSize: 20.sp,
                textFontweight: FontWeight.w500,
              ),
              Divider(
                color: const Color(0xffFFFFFF).withOpacity(
                  0.7,
                ),
              ),
            ],
          ),
          10.height,
          // Row with two child columns
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // First child column
                const Column(
                  children: [
                    TextComponent(
                      title: '05',
                      textColor: AppColor.blackColorText,
                      textFontweight: FontWeight.w600,
                      textSize: 20,
                    ),
                    TextComponent(
                      title: 'Events',
                      textColor: AppColor.blackColorText,
                      textFontweight: FontWeight.w400,
                      textSize: 12,
                    ),
                  ],
                ),
                // Second child column
                const Column(
                  children: [
                    TextComponent(
                      title: '10',
                      textColor: AppColor.blackColorText,
                      textFontweight: FontWeight.w600,
                      textSize: 20,
                    ),
                    TextComponent(
                      title: 'Connection',
                      textColor: AppColor.blackColorText,
                      textFontweight: FontWeight.w400,
                      textSize: 12,
                    ),
                  ],
                ),
                // Third child: MaterialButton
                MaterialButton(
                  color: const Color(
                    0xffFD0003,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      6,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<SettingScreen>(
                        builder: (context) => const SettingScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Settings',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
