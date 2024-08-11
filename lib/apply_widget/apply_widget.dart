import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class ApplyWidget extends StatelessWidget {
  const ApplyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 44,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Color(0xFF242C3B),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF191E29),
            blurRadius: 30,
            offset: Offset(4, 10),
            inset: true,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Bike30',
                labelStyle: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFFFFFFF).withOpacity(0.6)),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          Container(
            width: 114,
            height: 44,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border(),
                gradient: LinearGradient(colors: [
                  Color(0xFF34C8E8),
                  Color(0xFF4E4AF2),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Apply',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF)),
                )),
          )
        ],
      ),
    );
  }
}
