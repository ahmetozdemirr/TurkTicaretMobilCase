import 'package:flutter/material.dart';

class PositionedBoyutWidget extends StatelessWidget {
  const PositionedBoyutWidget({
    Key? key,
    this.height = 280,
    this.width = 180,
  }) : super(key: key);
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Material(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
