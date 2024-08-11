import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TotalWidget extends StatelessWidget {
  const TotalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353,
      height: 26,
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: const Color(0xFFFFFFFF).withOpacity(0.87)),
          ),
          const Text(
            '\$4,283.99',
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                color: Color(0xFF38B8EA)),
          )
        ],
      ),
    );
  }
}
