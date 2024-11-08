import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    this.isCenter,
    Key? key,
  }) : super(key: key);
  final String title;
  final bool? isCenter;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      elevation: 0,
      leadingWidth: 60,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: IconButton(
            // icon: const Icon(
            //   Icons.arrow_back,
            //   color: Colors.red,
            // ),

            icon: Image.asset(
              'assets/arrow_back.png',
              fit: BoxFit.cover,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 24.sp,
        ),
      ),
      centerTitle: isCenter ?? false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(
        64,
      );
}
