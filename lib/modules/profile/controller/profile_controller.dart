import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var apibaseHelper = ApiBaseHelper();

  Future<void> profileController() async {
    await apibaseHelper
        .onNetworkRequesting(
            url: 'user/', methode: METHODE.get, isAuthorize: true)
        .then((response) {
      debugPrint('= = = = =Get Response');
    }).onError((ErrorModel error, stackTrace) {
      debugPrint('= = = = = Error: $error');
    });
  }
}
