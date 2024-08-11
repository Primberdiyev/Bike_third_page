import 'package:flutter/material.dart';

class FreeShippingMessage extends StatelessWidget {
  const FreeShippingMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Your cart qualifies for free shipping',
        style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: const Color(0xFFFFFFFF).withOpacity(0.6)),
      ),
    );
  }
}
