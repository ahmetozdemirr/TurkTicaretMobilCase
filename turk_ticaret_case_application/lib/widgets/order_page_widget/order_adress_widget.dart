import 'package:flutter/material.dart';
import 'package:turk_ticaret_case_application/widgets/details_icon.dart';
import 'package:turk_ticaret_case_application/widgets/hint_text_widget.dart';
import 'package:turk_ticaret_case_application/widgets/icon_widget.dart';
import 'package:turk_ticaret_case_application/widgets/sub_text.dart';

class OrderAdressWidget extends StatelessWidget {
  const OrderAdressWidget({
    Key? key,
    required this.title1,
    required this.hintText1,
    required this.title2,
    required this.hintText2,
  }) : super(key: key);

  final String title1;
  final String hintText1;
  final String title2;
  final String hintText2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 256,
          width: 368,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(27, 34, 19, 34),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconWidget(
                        icon: Icons.location_on_outlined, color: Colors.yellow),
                    SubTextWidget(subTitle: title1),
                    //Text("Hotel Diamond Palace"),
                    DetailIconWidget(
                        width: 40,
                        height: 40,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                          color: Color.fromRGBO(255, 176, 103, 1),
                        ),
                        color: Color.fromRGBO(255, 176, 103, 0.1),
                        delayAnimation: 1.5),
                  ],
                ),
                HintTextWidget(
                  text: hintText1,
                ),
                SizedBox(
                  height: 34,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconWidget(icon: Icons.my_location, color: Colors.yellow),
                    SizedBox(
                      width: 21,
                    ),
                    SubTextWidget(subTitle: title2),
                    //Text("Hotel Diamond Palace"),
                  ],
                ),
                HintTextWidget(
                  text: hintText2,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
