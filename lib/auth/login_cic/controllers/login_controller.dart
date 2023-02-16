import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routers/app_router.dart';
import '../../../utils/helper/shared_preference.dart';

class LoginController extends GetxController {
  final localStorae = LocalStorage();
  final phoneNumberController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final phone = ''.obs;
  final pass = ''.obs;
  final baseUrl = ApiBaseHelper();

  Future<void> getLoginControler() async {
    await baseUrl.onNetworkRequesting(
        url: 'login',
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          'phone':
              '+855${phoneNumberController.value.text.replaceFirst("0", "")}',
          'password': passwordController.value.text,
        }).then((response) {
      debugPrint('Response: $response');
      approuter.push('/homescreen');
    }).onError((ErrorModel error, statusCode) {
      debugPrint('===OnError: ${error.bodyString} ${error.statusCode}');
    });
  }
}
