import 'package:flutter/material.dart';
import 'package:turk_ticaret_case_application/widgets/sub_text.dart';

class BilgiWidget extends StatelessWidget {
  const BilgiWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.fiyat = "",
  }) : super(key: key);
  final String title;
  final String subTitle;
  final String fiyat;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 10,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SubTextWidget(subTitle: title),
                  SizedBox(
                    width: 25,
                  ),
                  Text(fiyat.toString()),
                ],
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: Colors.yellow,
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
