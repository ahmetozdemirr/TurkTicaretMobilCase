import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turk_ticaret_case_application/screens/order_page.dart';
import 'package:turk_ticaret_case_application/widgets/buton_widget.dart';
import 'package:turk_ticaret_case_application/widgets/detail_page_widget/detail_%C4%B1mage1_widget.dart';
import 'package:turk_ticaret_case_application/widgets/details_icon.dart';
import 'package:turk_ticaret_case_application/widgets/hint_text_widget.dart';
import 'package:turk_ticaret_case_application/widgets/icon_widget.dart';
import 'package:turk_ticaret_case_application/widgets/product_page_widget/product_items_widget.dart';
import 'package:turk_ticaret_case_application/widgets/sub_text.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      BackButton(),
                      SubTextWidget(
                        subTitle: "Ashley Cafe",
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Stack(
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  SubTextWidget(
                                    subTitle: "Reseve a table now",
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: 150,
                                    alignment: Alignment(-0.9, 0.9),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, cons ectetur adipiscing elit. ",
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
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios))
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
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SubTextWidget(
                        subTitle: "Coffee",
                        color: Colors.black,
                      ),
                      SubTextWidget(
                        subTitle: "Kek",
                        color: Colors.black,
                      ),
                      Icon(Icons.density_medium)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: HintTextWidget(
                      text: "Today’s special",
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  ItemWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
