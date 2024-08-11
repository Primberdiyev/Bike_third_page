import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  final String name;
  const NameWidget(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          name,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: const Color(0xFFFFFFFF).withOpacity(0.87)),
        ),
      ),
    );
  }
}
