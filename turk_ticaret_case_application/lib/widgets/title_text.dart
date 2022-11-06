import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        title,
        overflow: TextOverflow.clip,
        style: GoogleFonts.poppins(
          fontStyle: FontStyle.normal,
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
    /*Theme.of(context).textTheme.subtitle1?.copyWith(
          color: Colors.black,
          fontWeight:FontWeight.w600,
          fontStyle: GoogleFonts.poppins()),
    );*/
  }
}
