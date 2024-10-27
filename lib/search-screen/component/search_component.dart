import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoovie/const/app_color.dart';

class SearchFieldComponent extends StatelessWidget {
  const SearchFieldComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {},
      style: GoogleFonts.montserrat(
        fontSize: 16,
        color: AppColor.blackColortext,
        fontWeight: FontWeight.w500,
      ),
      controller: TextEditingController(),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 3,
        ),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
          borderSide: const BorderSide(
            color: AppColor.primaryColor,
          ),
        ),
        errorBorder: InputBorder.none,
        fillColor: Colors.white,
        filled: true,
        disabledBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
          borderSide: const BorderSide(
            color: AppColor.greyTextColor,
          ),
        ),
        hintText: 'Search',
        prefixIcon: const Icon(Icons.search),
        hintStyle: GoogleFonts.montserrat(
          fontSize: 14,
          color: AppColor.blackColortext,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class PrimaryContainer extends StatelessWidget {
  const PrimaryContainer({
    required this.child,
    super.key,
    this.radius,
    this.color,
  });
  final Widget child;
  final double? radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 30),
        boxShadow: [
          BoxShadow(
            color: color ?? const Color(0XFF1E1E1E),
          ),
          const BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      child: child,
    );
  }
}
