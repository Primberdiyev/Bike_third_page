import 'package:flutter/material.dart';

class CostWidget extends StatelessWidget {
  final String cost;
  const CostWidget(this.cost, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          cost,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: Color(
              0xFF3C9EEA,
            ),
          ),
        ),
      ),
    );
  }
}
