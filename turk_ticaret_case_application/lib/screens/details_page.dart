import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turk_ticaret_case_application/model/coffee_model.dart';
import 'package:turk_ticaret_case_application/model/coffee_model.dart';
import 'package:turk_ticaret_case_application/screens/order_page.dart';
import 'package:turk_ticaret_case_application/widgets/buton_widget.dart';
import 'package:turk_ticaret_case_application/widgets/detail_page_widget/detail_%C4%B1mage1_widget.dart';
import 'package:turk_ticaret_case_application/widgets/details_icon.dart';
import 'package:turk_ticaret_case_application/widgets/hint_text_widget.dart';
import 'package:turk_ticaret_case_application/widgets/icon_widget.dart';
import 'package:turk_ticaret_case_application/widgets/sub_text.dart';

import '../view_model/countController_view_model.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<Controller>(Controller());
  }
}

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final controller = Get.put(Controller());
  List<CoffeeModel> get coffeeModel => _coffeeModel;
  List<CoffeeModel> _coffeeModel = [];
  var number = 0.obs;
  var data1 = "100 ml";
  var data2 = "250 ml";
  var data3 = "500 ml";
  var imageText =
      "https://i.lezzet.com.tr/images-xxlarge-secondary/cappuccino-nedir-nasil-yapilir-f2999f21-f9b0-4dd7-9a39-9f42b8ebfee0.jpg";
  var icecekText = "Cappucino";
  var fiyatText = "(550)";
  //final firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    /*  CollectionReference CafeRef = firestore.collection('Cafe');
    var ashley = CafeRef.doc('AshleyCafe').get();*/
    Controller controller = Controller();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 14, left: 14),
        child: Column(
          children: [
            DetailImage1Widget(
                imageText: imageText,
                icecekText: controller.title.string,
                fiyatText: fiyatText),
            Container(
              width: 368,
              height: 72,
              child: Text(
                "A cappuccino is an espresso-based coffee drink that originated in Austria with later development taking place in Italy..Read more",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DetailIconWidget(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.send),
                      color: Color.fromRGBO(255, 176, 103, 1),
                    ),
                    color: Color.fromRGBO(255, 176, 103, 0.1),
                    delayAnimation: 1.5),
                DetailIconWidget(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.send),
                      color: Color.fromRGBO(255, 176, 103, 1),
                    ),
                    color: Color.fromRGBO(255, 176, 103, 0.1),
                    delayAnimation: 1.5),
                DetailIconWidget(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.send),
                      color: Color.fromRGBO(255, 176, 103, 1),
                    ),
                    color: Color.fromRGBO(255, 176, 103, 0.1),
                    delayAnimation: 1.5),
              ],
            ),
            SubTextWidget(subTitle: "Choose size"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButonWidget(
                    onpressed: () async {
                      /*  var response = await FirebaseFirestore.instance
                          .collection('Products')
                          .get();
                      var list = response.docs;
                      print(list.first.data());*/

                      final CollectionReference ref2 =
                          FirebaseFirestore.instance.collection("Products");
                      await ref2.get().then((value) {
                        for (int i = 0; i < value.docs.length; i++) {
                          _coffeeModel.add(CoffeeModel.fromJson(
                              value.docs[i].data() as Map<dynamic, dynamic>));
                        }
                        print(_coffeeModel.length);
                      });
                      FirebaseFirestore.instance
                          .collection("Products")
                          .snapshots();

                      FirebaseFirestore.instance
                          .collection("Products")
                          .get()
                          .then(
                            (res) => print("urunler: ${res.docs.toList()}"),
                            onError: (e) => print("Error completing: $e"),
                          );
                    },
                    name: data1),
                ButonWidget(onpressed: () {}, name: data2),
                ButonWidget(onpressed: () {}, name: data3)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                DetailIconWidget(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        // number--;
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
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        controller.count.value++;
                      },
                      icon: Icon(Icons.add),
                      color: Color.fromRGBO(255, 176, 103, 1),
                    ),
                    color: Color.fromRGBO(255, 176, 103, 0.1),
                    delayAnimation: 1.5),
                SizedBox(
                  width: 110,
                ),
                ButonWidget(
                  onpressed: () {
                    Get.to(OrderPageView());
                  },
                  name: "Add to cart",
                  width: 180,
                  height: 58,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
