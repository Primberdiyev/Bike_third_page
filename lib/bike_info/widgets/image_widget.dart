import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String addresToImage;
  const ImageWidget(this.addresToImage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          colors: [
            Color(0xFF363E51),
            Color(0xFF4C5770),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Image(
        height: 90,
        width: 100,
        image: AssetImage('assets/images/$addresToImage'),
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
