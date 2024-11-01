import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/component/app_component.dart';
import 'package:zoovie/const/app_color.dart';

class TicketSummaryScreen extends StatelessWidget {
  const TicketSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Ticket Summary'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppComponent().ticketTypeItem(
              available: 100,
              price: 50,
              type: 'Vip',
            ),

            10.height,

            AppComponent().ticketTypeItem(
              available: 0,
              unAvailableColor: AppColor.primaryColor,
              price: 20,
              type: 'basic',
              noBookingAvilable: 'no Tickets left',
            ),
            20.height,
            _summaryItem('VIP Ticket', 1, 150),

            5.height,
            _summaryItem('Standard Ticket', 2, 80),
            const SizedBox(height: 24),

            // Total Cost
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Cost:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  r'$310.00',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _summaryItem(String type, int quantity, double price) {
    return Card(
      color: const Color(0xffFEFEFE),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
            10.height,
            const Text(
              'Ticket Description will goes here',
            )
          ],
        ),
      ),
    );
  }
}
