import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoovie/const/app_color.dart';

class TicketTypesScreen extends StatelessWidget {
  const TicketTypesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Ticket Types',
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _ticketTypeItem(
              type: 'VIP Ticket',
              price: 150,
              available: 5,
            ),
            _ticketTypeItem(
              type: 'VIP Ticket',
              price: 150,
              available: 5,
            ),
            _ticketTypeItem(
              type: 'VIP Ticket',
              price: 150,
              available: 0,
              unAvailableColor: AppColor.primaryColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget _ticketTypeItem({
    String? type,
    double? price,
    int? available,
    Color? unAvailableColor,
  }) {
    return Card(
      color: AppColor.tabButtonBorderColor,
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
                backgroundColor: AppColor.whiteColor,
                elevation: 0,
              ),
              onPressed: () {
                // Handle ticket booking
              },
              child: Text(
                'Book Now',
                style: GoogleFonts.montserrat(
                  color: AppColor.blackColortext,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
