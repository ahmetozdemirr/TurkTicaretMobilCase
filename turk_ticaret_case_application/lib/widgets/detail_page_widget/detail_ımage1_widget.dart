import 'package:flutter/material.dart';
import 'package:turk_ticaret_case_application/widgets/details_icon.dart';
import 'package:turk_ticaret_case_application/widgets/hint_text_widget.dart';
import 'package:turk_ticaret_case_application/widgets/icon_widget.dart';
import 'package:turk_ticaret_case_application/widgets/positioned_boyut.dart';
import 'package:turk_ticaret_case_application/widgets/positioned_icon.dart';
import 'package:turk_ticaret_case_application/widgets/positioned_image.dart';
import 'package:turk_ticaret_case_application/widgets/sub_text.dart';

class DetailImage1Widget extends StatelessWidget {
  const DetailImage1Widget({
    Key? key,
    required this.imageText,
    required this.icecekText,
    required this.fiyatText,
  }) : super(key: key);

  final String imageText;
  final String icecekText;
  final String fiyatText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PositionedBoyutWidget(
          height: 440,
          width: 400,
        ),
        PositionedImageWidget(
          height: 368,
          width: 400,
          image: imageText,
        ),
        PositionedIconWidget(
          left: 312,
          icon: Icons.favorite_border,
        ),
        BackButton(
          color: Colors.white,
        ),
        Positioned(
          bottom: 10,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SubTextWidget(subTitle: icecekText),
                    SizedBox(
                      width: 230,
                    ),
                    IconWidget(icon: Icons.star, color: Colors.yellow),
                  ],
                ),
                SubTextWidget(subTitle: fiyatText)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
