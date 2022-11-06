import 'package:flutter/material.dart';

class DetailIconWidget extends StatelessWidget {
  final Widget child;
  final Color color;
  final double delayAnimation;
  const DetailIconWidget(
      {Key? key,
      required this.child,
      required this.color,
      required this.delayAnimation,
      this.width = 73,
      this.height = 73})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            //borderRadius: BorderRadius,
          ),
          child: child,
        ),
      ],
    );
  }
}
