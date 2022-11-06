import 'package:get/get.dart';
import 'package:turk_ticaret_case_application/view_model/detail_view_model.dart';
import 'package:turk_ticaret_case_application/view_model/home_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut(() => DetailViewModel());
  }
}
