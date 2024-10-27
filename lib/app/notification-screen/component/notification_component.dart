import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoovie/const/app_color.dart';

class NotificationComponent extends StatelessWidget {
  // Status indicator, e.g., for new notifications

  const NotificationComponent({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.time,
    super.key,
    this.isNew = false,
  });
  final String imageUrl;
  final String title;
  final String description;
  final String time;
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: MaterialButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onPressed: () {},
        child: Card(
          color: Colors.white,
          elevation: 3,
          shadowColor: Colors.black.withOpacity(
            0.4,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Notification Image
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(imageUrl),
                ),
                SizedBox(width: 12.w),

                // Notification Content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // Notification Title
                          Expanded(
                            child: Text(
                              title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.blackColortext,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),

                          // Status Indicator
                          if (isNew)
                            const Icon(
                              Icons.circle,
                              color: Colors.red,
                              size: 8,
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),

                      // Notification Description
                      Text(
                        description,
                        style: GoogleFonts.montserrat(
                          fontSize: 12.sp,
                          color: AppColor.greyTextColor,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      // SizedBox(
                      //   height: 8.h,
                      // ),

                      // Notification Time and Action Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            time,
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: AppColor.greyTextColor,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'View',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: AppColor.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
