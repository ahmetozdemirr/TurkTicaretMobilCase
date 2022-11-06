import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turk_ticaret_case_application/screens/details_page.dart';
import 'package:turk_ticaret_case_application/view_model/countController_view_model.dart';
import 'package:turk_ticaret_case_application/widgets/details_icon.dart';
import 'package:turk_ticaret_case_application/widgets/hint_text_widget.dart';
import 'package:turk_ticaret_case_application/widgets/icon_widget.dart';
import 'package:turk_ticaret_case_application/widgets/sub_text.dart';

class OrderBilgiWidget extends StatelessWidget {
  OrderBilgiWidget({
    Key? key,
  }) : super(key: key);
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 106,
          width: 368,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.black),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(80, 18, 20, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubTextWidget(subTitle: controller.title.string),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            DetailIconWidget(
                                width: 33,
                                height: 33,
                                child: IconButton(
                                  onPressed: () {
                                    controller.count.value--;
                                  },
                                  icon: Icon(Icons.remove),
                                  color: Color.fromRGBO(255, 176, 103, 1),
                                ),
                                color: Color.fromRGBO(255, 176, 103, 0.1),
                                delayAnimation: 1.5),
                            SizedBox(
                              width: 10,
                            ),
                            Obx(() => Text("${controller.count.value}")),
                            SizedBox(
                              width: 10,
                            ),
                            DetailIconWidget(
                                width: 33,
                                height: 33,
                                child: IconButton(
                                  onPressed: () {
                                    controller.count.value++;
                                  },
                                  icon: Icon(Icons.add),
                                  color: Color.fromRGBO(255, 176, 103, 1),
                                ),
                                color: Color.fromRGBO(255, 176, 103, 0.1),
                                delayAnimation: 1.5),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 150,
                  alignment: Alignment(-0.9, 0.9),
                  child: Text(
                    "One 500 ml with extra ice",
                    style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal,
                      color: Color.fromRGBO(157, 157, 157, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    //textAlign: TextAlign.start,
                  ),
                  /*HintTextWidget(
                            text: "One 500 ml with extra ice"),*/
                ),
              ],
            ),

            // HintTextWidget(text: "One 500 ml with extra ice"),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 81,
            height: 106,
            child: Image(
              width: 110,
              image: NetworkImage(
                  "https://i.lezzet.com.tr/images-xxlarge-secondary/cappuccino-nedir-nasil-yapilir-f2999f21-f9b0-4dd7-9a39-9f42b8ebfee0.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        /* PositionedImageWidget(
            width: 81,
            height: 106,
            image:
                "https://i.lezzet.com.tr/images-xxlarge-secondary/cappuccino-nedir-nasil-yapilir-f2999f21-f9b0-4dd7-9a39-9f42b8ebfee0.jpg"),*/
      ],
    );
  }
}
