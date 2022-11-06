import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:turk_ticaret_case_application/model/cafe_model.dart';
import 'package:turk_ticaret_case_application/model/coffee_model.dart';
import 'package:turk_ticaret_case_application/services/detail_services.dart';
import 'package:turk_ticaret_case_application/services/home_services.dart';

class DetailViewModel extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<CoffeeModel> get detailModel => _detailModel;
  List<CoffeeModel> _detailModel = [];



  DetailViewModel() {
    getDetail();
  }

  getDetail() async {
    _loading.value = true;
    DetailService().getDetail().then((value) {
      for (int i = 0; i < value.length; i++) {
        _detailModel.add(CoffeeModel.fromJson(value[i].get(value)));
        _loading.value = false;
      }
      update();
    });
  }

 
}
