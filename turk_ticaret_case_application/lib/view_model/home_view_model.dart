import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:turk_ticaret_case_application/model/cafe_model.dart';
import 'package:turk_ticaret_case_application/model/coffee_model.dart';
import 'package:turk_ticaret_case_application/services/home_services.dart';

class HomeViewModel extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<CoffeeModel> get coffeeModel => _coffeeModel;
  List<CoffeeModel> _coffeeModel = [];

   List<CafeModel> get cafeModel => _cafeModel;
  List<CafeModel> _cafeModel = [];

  HomeViewModel() {
    getPopularCoffee();
  }

  getPopularCoffee() async {
    _loading.value = true;
    HomeService().getPopularCoffee().then((value) {
      for (int i = 0; i < value.length; i++) {
        _coffeeModel.add(CoffeeModel.fromJson(value[i].get(value)));
        _loading.value = false;
      }
      update();
    });
  }

   getCafe() async {
    _loading.value = true;
    HomeService().getCafe().then((value) {
      for (int i = 0; i < value.length; i++) {
        _cafeModel.add(CafeModel.fromJson(value[i].get(value)));
        _loading.value = false;
      }
      update();
    });
  }
}
