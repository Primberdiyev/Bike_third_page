import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class ButtonsWidget extends StatefulWidget {
  const ButtonsWidget({super.key});

  @override
  State<ButtonsWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ButtonsWidget> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                gradient: LinearGradient(colors: [
                  Color(0xFF34C8E8),
                  Color(0xFF4E4AF2),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: () {
                setState(() {
                  counter += 1;
                });
              },
              child: const Text(
                "+",
                style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "$counter",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: const Color(0xFFFFFFFF).withOpacity(0.6)),
          ),
          TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: const Color(0xFF353F54),
                minimumSize: const Size(24, 24),
                padding: EdgeInsets.zero),
            onPressed: () {
              setState(() {
                counter -= 1;
              });
            },
            child: SizedBox(
                width: 16,
                child: Text(
                  '---',
                  style: TextStyle(
                      color: const Color(0xFFFFFFFF).withOpacity(0.6)),
                )),
          ),
        ],
      ),
    );
  }
}
