import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/component/app_component.dart';
import 'package:zoovie/component/custom_app_bar.dart';
import 'package:zoovie/order-detail/view/order_detail_screen.dart';
import 'package:zoovie/ticket_screen/component/ticket_screen_comp.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketSCreenState();
}

class _TicketSCreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F4F6),
      body: Column(
        children: [
          const CustomAppBar(
            title: 'Latest event',
            isCenter: true,
          ),
          20.height,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                const TicketSelection(
                  availableSpots: 10,
                  perks: 'VIP',
                  pricePerTicket: 100,
                  ticketType: 'VIP Ticket',
                  initialQuantity: 0,
                ),
                20.height,
                const TicketSelection(
                  availableSpots: 100,
                  perks: 'Normal',
                  pricePerTicket: 10,
                  ticketType: 'Normal Ticket',
                  initialQuantity: 0,
                ),
                30.height,
                AppComponent().button(
                  context,
                  title: 'Purchase',
                  onTap: () {
                    const OrderDetailScreen().launch(context);
                  },
                  borderRadius: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
