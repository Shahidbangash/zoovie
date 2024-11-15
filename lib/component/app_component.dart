import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/const/app_color.dart';

class AppComponent {
  Widget summaryItem(String type, int quantity, double price) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$type x$quantity',
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  '\$${(price * quantity).toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget ticketTypeItem({
    String? type,
    double? price,
    int? available,
    Color? unAvailableColor,
    String? noBookingAvilable,
  }) {
    return Card(
      color: Colors.white,
      elevation: 1,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type ?? '',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Price: \$$price',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                Text(
                  'Available: $available',
                  style: TextStyle(
                    fontSize: 14,
                    color: unAvailableColor ?? Colors.green[700],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.greyTextColor.withOpacity(
                  0.3,
                ),
                elevation: 0,
              ),
              onPressed: () {
                // Handle ticket booking
              },
              child: Text(
                noBookingAvilable ?? 'Book Now',
                style: GoogleFonts.montserrat(
                  color: AppColors.blackColorText,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
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
