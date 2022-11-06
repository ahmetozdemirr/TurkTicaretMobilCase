import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:turk_ticaret_case_application/screens/details_page.dart';
import 'package:turk_ticaret_case_application/view_model/countController_view_model.dart';
import 'package:turk_ticaret_case_application/view_model/home_view_model.dart';
import 'package:turk_ticaret_case_application/widgets/bilgi_widget.dart';
import 'package:turk_ticaret_case_application/widgets/png_image.dart';
import 'package:turk_ticaret_case_application/widgets/positioned_boyut.dart';
import 'package:turk_ticaret_case_application/widgets/positioned_dakika.dart';
import 'package:turk_ticaret_case_application/widgets/positioned_icon.dart';
import 'package:turk_ticaret_case_application/widgets/positioned_image.dart';
import 'package:turk_ticaret_case_application/widgets/sub_text.dart';
import 'package:turk_ticaret_case_application/widgets/title_text.dart';

import 'products.dart';
/*class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<Controller>(Controller());
  }
}*/

class HomePageView extends StatelessWidget {
  HomePageView({Key? key}) : super(key: key);
  final title = "Get your Coffee on one finger tap";
  final popC = "Popular Coffee";
  final NeaC = "Nearest coffee shops";
  var cappucino = "cappucino".obs;
  final controller2 = Get.put(Controller());
  //final firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    /* CollectionReference CafeRef = firestore.collection('Cafe');  <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    var ashley = CafeRef.doc('AshleyCafe').get();*/
    Controller controller3 = Controller();

    return Scaffold(
      backgroundColor: Color(0xffefe0),
      body: Padding(
        padding: const EdgeInsets.only(top: 21, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextTitle(title: title),
                PngImage(),
              ],
            ),
            sized(),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search anything",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(157, 157, 157, 1)))),
              ),
            ),
            sized(),
            //TextTitle(title: popC),
            SubTextWidget(subTitle: popC),

            sized(),

            Expanded(
              flex: 4,
              child: GetBuilder<HomeViewModel>(
                builder: (controller) => ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 300,
                    child: Stack(
                      children: [
                        PositionedBoyutWidget(),
                        GestureDetector(
                          onTap: () {
                            Get.to(DetailPage());
                          },
                          child: PositionedImageWidget(
                            image:
                                "https://i.lezzet.com.tr/images-xxlarge-secondary/cappuccino-nedir-nasil-yapilir-f2999f21-f9b0-4dd7-9a39-9f42b8ebfee0.jpg",
                          ),
                        ),
                        PositionedIconWidget(
                          icon: Icons.favorite_border,
                        ),
                        PositionedDakika(
                          kalanZaman: '10',
                          puan: "5.0",
                        ),
                        BilgiWidget(
                            title: controller3.title.string,
                            //  controller.coffeeModel[index].name.toString(),
                            subTitle: "Coffee Cafe",
                            fiyat: "550",
                            icon: Icons.location_on_outlined)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            sized(),
            // TextTitle(title: NeaC),
            Expanded(
              flex: 0,
              child: Row(
                children: [
                  SubTextWidget(subTitle: NeaC),
                  Spacer(),
                  TextButton(
                      onPressed: () async {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.yellow),
                      ))
                ],
              ),
            ),
            sized(),
            Expanded(
              flex: 4,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 300,
                  child: Stack(
                    children: [
                      PositionedBoyutWidget(),
                      GestureDetector(
                        onTap: () => Get.to(ProductsPage()),
                        child: PositionedImageWidget(
                          image:
                              "https://www.buseterim.com.tr/upload/default/2019/9/30/kahvehakkndabilmenizgerekenler680.jpg",
                        ),
                      ),
                      PositionedIconWidget(
                        title: "5",
                        icon: Icons.favorite_border,
                      ),
                      /*  PositionedDakika(
                        kalanZaman: '10',
                        puan: "5.0",
                      ),*/
                      const BilgiWidget(
                        title: "Assley Coffee",
                        subTitle: "5.0/105 ratings",
                        icon: Icons.star_border_rounded,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox sized() {
    return SizedBox(
      height: 10,
    );
  }
}
/*
class ImageContainer extends StatefulWidget {
  const ImageContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: [
          PositionedBoyutWidget(),
          PositionedImageWidget(
            image:
                "https://www.buseterim.com.tr/upload/default/2019/9/30/kahvehakkndabilmenizgerekenler680.jpg",
          ),
          PositionedIconWidget(
            icon: Icons.favorite_border,
          ),
          PositionedDakika(
            kalanZaman: '10',
            puan: "5.0",
          ),
          BilgiWidget(
            title: "Assley Coffee",
            subTitle: "5.0/105 ratings",
            icon: Icons.star_border_rounded,
          )
        ],
      ),
    );
  }
}
*/

/*
class card_widget extends StatelessWidget {
  const card_widget({
    Key? key,
    this.imageName =
        "https://www.buseterim.com.tr/upload/default/2019/9/30/kahvehakkndabilmenizgerekenler680.jpg",
  }) : super(key: key);
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      // shadowColor: Colors.black,
      color: Color(0xffefe0),
      // clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Stack(children: [
            Ink.image(
              image: NetworkImage(
                imageName,
              ),
              height: 150,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 118,
              left: 5,
              child: Row(
                children: [
                  IconWidget(
                    icon: Icons.access_time,
                    color: Colors.white,
                  ),
                  Text(
                    "10 min delivery",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    color: Colors.yellow,
                  ),
                  Text(
                    "5.0",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 8,
              left: 152,
              child: Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.25),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.yellow,
                ),
              ),
            ),
          ]),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubTextWidget(subTitle: "Cappucino"),
                    Text("550"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_location,
                      color: Colors.grey,
                    ),
                    Text("Coffee Cafe"),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
*/

class ColorsItems {
  final Color scaffoldColor = const Color(0xffefe0);
}
