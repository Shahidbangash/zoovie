import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/component/app_component.dart';
import 'package:zoovie/component/custom_app_bar.dart';
import 'package:zoovie/event-card-screen/component/event_card_component.dart';
import 'package:zoovie/order-detail/component/order_detail_comp.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F4F6),
      body: Column(
        children: [
          CustomAppBar(
            title: 'Order Detail',
            isCenter: true,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                EventCard(
                  title: 'title',
                  date: '21-14-24',
                  location: 'NewYork',
                  imageUrl:
                      'https://images.unsplash.com/photo-1730637355825-3ec4372eb044?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                10.height,
                EventCard(
                  title: 'title',
                  date: '21-14-24',
                  location: 'NewYork',
                  imageUrl:
                      'https://images.unsplash.com/photo-1730637355825-3ec4372eb044?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                20.height,
                PaymentComponent()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
