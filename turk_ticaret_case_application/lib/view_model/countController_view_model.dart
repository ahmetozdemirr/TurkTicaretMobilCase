import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  var title = "Cappucino".obs;
  increment() => count++;
  changeName(String s) {
    title = RxString(s);
  }
}
