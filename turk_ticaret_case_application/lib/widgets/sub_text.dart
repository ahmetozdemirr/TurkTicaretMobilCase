import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubTextWidget extends StatelessWidget {
  const SubTextWidget({
    Key? key,
    required this.subTitle,
    this.size = 18,
    this.color = const Color.fromRGBO(0, 0, 0, 1),
  }) : super(key: key);

  final String subTitle;

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      overflow: TextOverflow.clip,
      style: GoogleFonts.poppins(
        fontStyle: FontStyle.normal,
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
