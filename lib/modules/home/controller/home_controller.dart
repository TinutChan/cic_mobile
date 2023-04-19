import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/user_model/user_model.dart';

class HomeController extends GetxController {
  int activeIndex = 0;
  final _apiBaseHelper = ApiBaseHelper();
  final userModel = UserDetailModel().obs;
  var isLoading = false.obs;
  // final customerId = "".obs;

  Future gethomeController() async {
    isLoading(true);
    // customerId.value = await LocalDataStorage.getString("customer_id");
    // debugPrint('= = = = CustomerID: ${customerId.value}');
    await _apiBaseHelper
        .onNetworkRequesting(
            url: 'user', methode: METHODE.get, isAuthorize: true)
        .then((response) {
      userModel.value = UserDetailModel.fromJson(response);
      // debugPrint('= = = =${userModel.value}');
      isLoading(false);
    }).onError((ErrorModel error, _) {
      debugPrint(' = = = = On Error: ${error.bodyString} = = = = ');
      isLoading(false);
    });
    return userModel.value;
  }

  void refreshDashboard() {
    gethomeController();
  }
}
