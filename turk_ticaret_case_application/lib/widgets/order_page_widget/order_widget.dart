import 'package:flutter/material.dart';
import 'package:turk_ticaret_case_application/widgets/hint_text_widget.dart';


class OrderRowWidget extends StatelessWidget {
  const OrderRowWidget({
    Key? key,
    required this.text1,
    required this.text2,
    this.size = 16,
  }) : super(key: key);
  final String text1;
  final String text2;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HintTextWidget(
          color: Colors.black,
          text: text1,
          size: size,
        ),
        HintTextWidget(
          color: Colors.black,
          text: text2,
          size: size,
        ),
      ],
    );
  }
}
