import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButonWidget extends StatelessWidget {
  const ButonWidget({
    Key? key,
    required this.name,
    this.width = 106,
    this.height = 37,
    this.radius = 8,
    required this.onpressed,
  }) : super(key: key);
  final Function() onpressed;
  final double width;
  final double height;
  final double radius;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: Color.fromRGBO(49, 77, 69, 1),
        maximumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, left: 24, right: 24, bottom: 5),
        child: Text(
          name,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
