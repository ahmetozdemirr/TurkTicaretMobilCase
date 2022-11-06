import 'package:flutter/material.dart';
import 'package:turk_ticaret_case_application/widgets/icon_widget.dart';

class PositionedDakika extends StatelessWidget {
  const PositionedDakika({
    Key? key,
    required this.kalanZaman,
    required this.puan,
  }) : super(key: key);
  final String kalanZaman;
  final String puan;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 118,
      left: 0.5,
      child: Container(
        child: Row(
          children: [
            IconWidget(
              icon: Icons.access_time,
              color: Colors.white,
            ),
            Text(
              "$kalanZaman min delivery",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.star_border_rounded,
              color: Colors.yellow,
            ),
            Text(
              puan,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
