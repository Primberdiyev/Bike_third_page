import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'My Shopping cart',
        style: TextStyle(
            fontSize: 20,
            color: Color(0xFFFFFFFF),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
