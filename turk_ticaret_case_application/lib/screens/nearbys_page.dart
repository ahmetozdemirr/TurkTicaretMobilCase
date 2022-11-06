import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:turk_ticaret_case_application/widgets/buton_widget.dart';
import 'package:turk_ticaret_case_application/widgets/hint_text_widget.dart';
import 'package:turk_ticaret_case_application/widgets/icon_widget.dart';
import 'package:turk_ticaret_case_application/widgets/sub_text.dart';

class NearbyPage extends StatefulWidget {
  NearbyPage({Key? key}) : super(key: key);

  @override
  State<NearbyPage> createState() => _NearbyPageState();
}

class _NearbyPageState extends State<NearbyPage> {
  Completer<GoogleMapController> haritaKontrol = Completer();
  List<Marker> isaretler = <Marker>[
    Marker(
      markerId: MarkerId("Id"),
      position: LatLng(41.025658, 28.974155),
      infoWindow: InfoWindow(title: "Cafe", snippet: "Cafe2"),
    ),
  ];
  var baslangicKonum =
      CameraPosition(target: LatLng(41.025658, 28.974155), zoom: 20);

  /*Future<void> konum() async {
    final GoogleMapController controller = await haritaKontrol.future;
    var isaret = Marker(
      markerId: MarkerId("Id"),
      position: LatLng(41.0039643, 28.4517462),
      infoWindow: InfoWindow(title: "Cafe", snippet: "Cafe2"),
    );
    setState(() {
      isaretler.add(isaret);
    });

    var konum = CameraPosition(target: LatLng(41.0039643, 28.4517462), zoom: 8);
    controller.animateCamera(CameraUpdate.newCameraPosition(konum));
  }*/

  final String text1 =
      "Find the best place to hang out with friends. Visit Café Coffee Day and enjoy hot coffees, cold coffees, snacks and more. Asley is the best place to spend ...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 248, 248, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 14, left: 14),
        child: Column(
          children: [
            Container(
              height: 738,
              width: 400,
              //color: Colors.red,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    child: Container(
                      width: 400,
                      height: 388,
                      // height: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        /*   boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0),
                        ],*/
                      ),
                      child: Column(
                        //padding gelebilir
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SubTextWidget(subTitle: "Ashley Cafe"),
                              SizedBox(
                                width: 230,
                              ),
                              IconWidget(
                                  icon: Icons.star, color: Colors.yellow),
                            ],
                          ),
                          SubTextWidget(subTitle: "Special coffee and cakes "),
                          Container(
                            width: 368,
                            height: 72,
                            child: Text(
                              text1,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            height: 202,
                            width: 368,
                            decoration: BoxDecoration(
                              // color: Colors.yellow,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: GoogleMap(
                              initialCameraPosition: baslangicKonum,
                              mapType: MapType.normal,
                              markers: Set<Marker>.of(isaretler),
                              onMapCreated: (GoogleMapController controller) {
                                haritaKontrol.complete(controller);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 358,
                            height: 48,
                            child: ButonWidget(
                              onpressed: () {},
                              name: "View Products",
                              width: 368,
                              height: 58,
                              radius: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0),
                      ],
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                            height: 336,
                            width: 400,
                            image: NetworkImage(
                                "https://s3-alpha-sig.figma.com/img/bd4d/eddd/40390ab5b5a48bcf2e503e023363a24b?Expires=1668384000&Signature=dws143JrLG0Ebuwjk60q6YdorjhEyXH8gSeRI8dC1B4iS8j4iCFmiWCeioiDUOsGxJYG4qlx-EKUZw9xLB1aBH7IhWKbNnACEGoyD06Wm6OTKxocA5W0VUsE7uB1Vxv2Hiw9BP~by1WjeCxRQs880V4zxsCY4VjFMKckm1~pJDZ6oDwXAj~XGdTdVmAZM2xhwtnLeBRsu5F3FpNeVZv887qOR1Jo8QFgPYIo2Y4z~S5Nim9oNpL-qTNg4xjtGJtmDe0Wp6CbQmRAjqqETxPblcCJFkb3UuTCTkouNm~CCtntqQoaiDosSnINhHIr3S8EaF6lspnccai~Wyyfv2-s6A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: Column(
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BackButton(
                                    color: Colors.white,
                                  ),
                                  HintTextWidget(
                                    text: "Nearby Shop",
                                    color: Colors.white,
                                    size: 18,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
