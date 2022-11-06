import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HintTextWidget extends StatelessWidget {
   HintTextWidget({
    Key? key,
    required this.text,
    this.size = 14,
    this.color=const Color.fromRGBO(157, 157, 157, 1)
  }) : super(key: key);
  final String text;
  final double size;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.clip,
      style: GoogleFonts.poppins(
        fontStyle: FontStyle.normal,
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
