import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: 174,
      height: 44,
      decoration: const BoxDecoration(
        color: Color(0xFF242C3B),
        boxShadow: [
          BoxShadow(
              color: Color(0xFF11161E),
              offset: Offset(4, 4),
              blurRadius: 4,
              inset: true),
          BoxShadow(
              color: Color(0xFF2B3545),
              offset: Offset(-2, -2),
              blurRadius: 8,
              inset: true)
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(colors: [
                  Color(0xfff34c8e8),
                  Color(0xFF4E4AF2),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                '>',
                style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
              ),
            ),
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                labelText: 'Checkout',
                labelStyle: TextStyle(
                  color: const Color(0xFFFFFFFF).withOpacity(0.6),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                border: const OutlineInputBorder(borderSide: BorderSide.none)),
          ))
        ],
      ),
    );
  }
}
