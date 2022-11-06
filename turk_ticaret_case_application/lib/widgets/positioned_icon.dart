import 'package:flutter/material.dart';

class PositionedIconWidget extends StatelessWidget {
  const PositionedIconWidget({
    Key? key,
    required this.icon,
    this.title = "",
    this.top = 8,
    this.bottom = 0,
    this.left = 142,
    this.right = 0,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final double top;
  final double left;
  final double right;
  final double bottom;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      //right: 0,
      //bottom: bottom,
      child: Container(
        width: 34,
        height: 34,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.25),
          shape: BoxShape.circle,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.yellow,
            ),
            //Text(title),
          ],
        ),
      ),
    );
  }
}
