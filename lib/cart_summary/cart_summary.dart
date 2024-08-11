import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartSummary extends StatelessWidget {
  final String amount;
  String dataOfAmount;
  CartSummary(this.amount, this.dataOfAmount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, right: 20, left: 20),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              amount,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFFFFFFFF).withOpacity(0.87),
                  fontSize: 15),
            ),
            Text(
              dataOfAmount,
              style: TextStyle(
                  color: const Color(0xFFFFFFFF).withOpacity(0.6),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
