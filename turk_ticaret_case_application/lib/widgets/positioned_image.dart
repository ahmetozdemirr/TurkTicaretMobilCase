import 'package:flutter/material.dart';

class PositionedImageWidget extends StatelessWidget {
  const PositionedImageWidget({
    Key? key,
    this.height = 150,
    this.width = 180,
    required this.image,
    this.radius = 20,
  }) : super(key: key);
  final String image;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
