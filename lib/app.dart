import 'package:bike_second_page/apply_widget/apply_widget.dart';
import 'package:bike_second_page/bike_info/bike_info.dart';
import 'package:bike_second_page/cart_summary/cart_summary.dart';
import 'package:bike_second_page/checkout_widget/checkout_widget.dart';
import 'package:bike_second_page/free_shipping_message/free_shipping_message.dart';
import 'package:bike_second_page/cart_summary/total_widget.dart';
import 'package:flutter/material.dart';
import 'package:bike_second_page/text_widget/text_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF242C3B),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              const TextWidget(),
              const SizedBox(
                height: 32,
              ),
              const BikeInfo(
                  name: 'PEUGEOT-LRO1',
                  cost: "\$ 1,999.99",
                  addressToImage: 'bike_first.png'),
              const BikeInfo(
                  name: 'PILOT - CHROMOLY 520',
                  cost: '\$ 3,999.99',
                  addressToImage: 'bike_second.png'),
              const BikeInfo(
                  name: 'SMITH - Trade',
                  cost: '\$ 120\t\t',
                  addressToImage: 'bike_third.png'),
              const SizedBox(
                height: 20,
              ),
              const FreeShippingMessage(),
              const SizedBox(
                height: 24,
              ),
              const ApplyWidget(),
              const SizedBox(height: 8),
              CartSummary('Subtotal:', '\$6119.99'),
              CartSummary('Delivery Fee:', '\$0'),
              CartSummary('Discount:', '30%'),
              const TotalWidget(),
              const CheckoutWidget()
            ],
          ),
        ),
      ),
    );
  }
}
