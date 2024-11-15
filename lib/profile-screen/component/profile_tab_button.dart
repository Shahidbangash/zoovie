import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/const/app_color.dart';

class ProfileSCreenComponent {
  Widget tabButton({
    required BuildContext context,
    VoidCallback? onTap,
    String? title,
    Color? textColor,
    FontWeight? fontWeight,
    double? fontSize,
    Color? bgColor,
    bool isSelected = false,
    // bool showBorder = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70.w,
        height: 40.h,
        alignment: Alignment.center,
        // padding: const EdgeInsets.symmetric(
        //   horizontal: 16,
        //   vertical: 15,
        // ),
        decoration: BoxDecoration(
          color: bgColor ?? (isSelected ? AppColors.primaryColor : null),
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: Text(
          title ?? 'Info Button',
          style: GoogleFonts.montserrat(
            color: textColor ??
                (isSelected ? AppColors.whiteColor : AppColors.greyTextColor),
            fontSize: fontSize ?? 12.sp,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget button(
    BuildContext context, {
    required String? title,
    required Function? onTap,
    bool assignWidth = true,
    bool isSvgImage = false,
    String? svgPath,
    double? height = 56,
    double? width,
    double elevation = 2,
    Color? color,
    double textSize = 18,
    FontWeight fontWeight = FontWeight.w600,
    Color? borderColor,
    Color? svgColor,
    Widget? child,
    double? borderRadius = 40,
    double margin = 0,
    Color? textColor,
    double? borderWidth,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: AppButton(
        margin: EdgeInsets.symmetric(horizontal: margin),
        text: title,
        height: height,
        elevation: elevation,
        color: color ?? AppColors.primaryColor,
        textStyle: GoogleFonts.poppins(
          fontSize: textSize,
          color: textColor ?? white,
          fontWeight: fontWeight,
        ),
        width: width ?? context.width() - context.navigationBarHeight,
        // assignWidth
        //     ? width ?? context.width() - context.navigationBarHeight
        //     : null,
        onTap: onTap,

        shapeBorder: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor ?? AppColors.primaryColor,
            width: borderWidth ?? 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius!),
          ),
        ),
        child: child,
        // child: isSvgImage
        // ? Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       SvgPi.asset(
        //         svgPath ??
        //         height: 24,
        //         width: 24,
        //         color: svgColor ?? Colors.white,
        //       ),
        //       const SizedBox(
        //         width: 7,
        //       ),
        //       FittedBox(
        //         fit: BoxFit.cover,
        //         child: Text(
        //           title ?? '',
        //           style: GoogleFonts.poppins(
        //             fontSize: textSize,
        //             color: textColor ?? white,
        //             fontWeight: fontWeight,
        //           ),
        //         ),
        //       ),
        //     ],
        //   )
        // : child,
      ),
    );
  }
}
