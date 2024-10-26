import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoovie/const/app_color.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({
    super.key,
    this.lineHeight,
    this.textColor,
    this.textFontweight,
    this.textSize,
    this.title,
    this.alignText,
  });

  final String? title;
  final TextAlign? alignText;

  final FontWeight? textFontweight;

  final double? textSize;
  final double? lineHeight;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: alignText ?? TextAlign.center,
      title ?? 'Add title',
      style: GoogleFonts.montserrat(
        fontSize: textSize ?? 14.sp,
        color: textColor ?? AppColor.greyTextColor,
        height: lineHeight ?? 1.6,
        fontWeight: textFontweight ?? FontWeight.w400,
      ),
    );
  }
}
