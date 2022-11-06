import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turk_ticaret_case_application/ana_sayfa.dart';
import 'package:turk_ticaret_case_application/screens/details_page.dart';
import 'package:turk_ticaret_case_application/screens/home_page.dart';
import 'package:turk_ticaret_case_application/widgets/buton_widget.dart';
import 'package:turk_ticaret_case_application/widgets/order_page_widget/order_adress_widget.dart';
import 'package:turk_ticaret_case_application/widgets/order_page_widget/order_bilgi_widget.dart';
import 'package:turk_ticaret_case_application/widgets/order_page_widget/order_fatura_widget.dart';
import 'package:turk_ticaret_case_application/widgets/sub_text.dart';

import '../view_model/countController_view_model.dart';

class OrderPageView extends StatelessWidget {
  OrderPageView({
    Key? key,
  }) : super(key: key);
  //OrderPageView(this.number);
  final String title1 = "Hotel Diamond Palace";
  final String title2 = "Middle road Sediago";
  final String hintText1 = "394K, Central Park, New Delhi, India";
  final String hintText2 = "201, sector 25, Centre Park, New Delhi, India";

  //int number;
  //final number = Get.lazyPut(() => DetailPage());
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 7, right: 30, left: 30),
          child: Column(
            children: [
              Row(
                children: [
                  BackButton(),
                  Container(
                    child: SubTextWidget(
                      subTitle: "Place Order",
                    ),
                    alignment: Alignment.center,
                  )
                ],
              ),
              OrderAdressWidget(
                  title1: title1,
                  hintText1: hintText1,
                  title2: title2,
                  hintText2: hintText2),
              SizedBox(
                height: 20,
              ),
              OrderBilgiWidget(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 1,
                child: OrderFaturaWidget(),
              ),
              SizedBox(
                height: 0,
              ),
              Expanded(
                flex: 0,
                child: Container(
                  width: 368,
                  child: ButonWidget(
                    onpressed: (() {
                      Get.to(AnaSayfa());
                    }),
                    name: "Pay now",
                    width: 368,
                    height: 58,
                    radius: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*
class OrderPageView extends StatefulWidget {
  OrderPageView({Key? key}) : super(key: key);

  @override
  State<OrderPageView> createState() => _OrderPageViewState();
}

class _OrderPageViewState extends State<OrderPageView> {
  final String title1 = "Hotel Diamond Palace";
  final String title2 = "Middle road Sediago";
  final String hintText1 = "394K, Central Park, New Delhi, India";
  final String hintText2 = "201, sector 25, Centre Park, New Delhi, India";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 7, right: 30, left: 30),
        child: Column(
          children: [
            Row(
              children: [
                BackButton(),
                Container(
                  child: SubTextWidget(
                    subTitle: "Place Order",
                  ),
                  alignment: Alignment.center,
                )
              ],
            ),
            OrderAdressWidget(
                title1: title1,
                hintText1: hintText1,
                title2: title2,
                hintText2: hintText2),
            SizedBox(
              height: 20,
            ),
            OrderBilgiWidget(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: OrderFaturaWidget(),
            ),
            SizedBox(
              height: 0,
            ),
            Expanded(
              flex: 0,
              child: Container(
                width: 368,
                child: ButonWidget(
                  onpressed: (() {
                    
                  }),
                  name: "Pay now",
                  width: 368,
                  height: 58,
                  radius: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
*/