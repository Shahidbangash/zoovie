import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/const/app_color.dart';
import 'package:zoovie/const/resource.dart';

class HomeScreenComponent {
  Widget tabBarButton({
    required String? imagePath,
    required bool isSelected,
    required BuildContext context,
    VoidCallback? onTap,
  }) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
        side: BorderSide(
          color: isSelected
              ? AppColor.selectedtabButtonBorderColor
              : AppColor.tabButtonBorderColor,
          width: 0.5,
        ),
      ),
      onPressed: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 105.w,
        height: 24,
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF).withOpacity(
            0.4,
          ),
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: Image.asset(
          imagePath ?? R.ASSETS_TAB_BTN_IMG1_PNG,
          width: 18,
          height: 18,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget profileCard({
    required String imageUrl,
    required String name,
    bool isCreate = false,
    VoidCallback? onTap,
  }) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                12,
              ),
              child: InkWell(
                onTap: onTap,
                child: Image.asset(
                  imageUrl,
                  width: 90.w,
                  height: 120.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (isCreate)
              Positioned(
                bottom: -12.h,
                child: DottedBorder(
                  borderType: BorderType.Circle,
                  color: Colors.red,
                  dashPattern: const [
                    6,
                    3,
                  ],
                  strokeWidth: 2,
                  child: Container(
                    padding: const EdgeInsets.all(
                      5,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
            if (!isCreate)
              Positioned(
                bottom: -12,
                child: Container(
                  padding: const EdgeInsets.all(
                    2,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(
                      imageUrl,
                    ),
                  ),
                ),
              ),
          ],
        ),
        15.height,
        Text(
          name,
          style: GoogleFonts.montserrat(
            color: AppColor.blackColortext,
            fontSize: 12.sp,
            height: 1.6,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
