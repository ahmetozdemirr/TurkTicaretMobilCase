import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:turk_ticaret_case_application/ana_sayfa.dart';
import 'package:turk_ticaret_case_application/firbaseDeneme10.dart';
import 'package:turk_ticaret_case_application/firebase_options.dart';
import 'package:turk_ticaret_case_application/helper/binding.dart';
import 'package:turk_ticaret_case_application/screens/nearbys_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
          tabBarTheme: TabBarTheme(
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black,
          ),
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Color(0xffefe0),
            elevation: 0,
          )),
      home: AnaSayfa(),
    );
  }
}
