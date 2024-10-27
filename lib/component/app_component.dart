import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
            padding: const EdgeInsets.all(16.0),
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
                      fontSize: 16, fontWeight: FontWeight.w600),
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                backgroundColor: AppColor.greyTextColor.withOpacity(
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
                  color: AppColor.blackColortext,
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
}
