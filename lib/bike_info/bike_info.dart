import 'package:bike_second_page/bike_info/widgets/buttons_widget.dart';
import 'package:bike_second_page/bike_info/widgets/cost_widget.dart';
import 'package:bike_second_page/bike_info/widgets/name_widget.dart';
import 'package:bike_second_page/bike_info/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class BikeInfo extends StatelessWidget {
  final String addressToImage;
  final String cost;
  final String name;

  const BikeInfo({
    super.key,
    required this.name,
    required this.cost,
    required this.addressToImage,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImageWidget(addressToImage),
            SizedBox(
              width: 280,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NameWidget(name),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [CostWidget(cost), const ButtonsWidget()],
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          thickness: 0.5,
          color: const Color(0xFFFFFFFF).withOpacity(0.2),
        )
      ],
    );
  }
}
