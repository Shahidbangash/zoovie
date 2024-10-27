import 'package:flutter/material.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  _CouponsScreenState createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  final TextEditingController _couponController = TextEditingController();
  double discount = 0;

  void _applyCoupon() {
    if (_couponController.text == 'DISCOUNT20') {
      setState(() {
        discount = 20;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Coupon Applied! 20% Discount.'),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Invalid Coupon Code'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Coupons and Offers')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _couponController,
              decoration: InputDecoration(
                hintText: 'Enter coupon code',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.check),
                  onPressed: _applyCoupon,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Discount: ${discount == 0 ? "No discount applied" : "$discount%"}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
