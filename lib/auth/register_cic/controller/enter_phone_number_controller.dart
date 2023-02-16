// ignore_for_file: unrelated_type_equality_checks

import 'package:cic_mobile/auth/register_cic/model/message_models/messager_model.dart';
import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routers/app_router.dart';

class EnterPhoneNumberController extends GetxController {
  final passwordController = TextEditingController().obs;
  final phoneNumberController = TextEditingController().obs;
  final baseUrl = ApiBaseHelper();

  Future<void> getEnterNumberController() async {
    await baseUrl.onNetworkRequesting(
      url: 'register/',
      methode: METHODE.post,
      isAuthorize: false,
      body: {
        "phone":
            "+855${phoneNumberController.value.text.replaceFirst("0", "")}",
      },
    ).then((response) {
      debugPrint('Response $response');
      var successOtp = response['success'];
      var psw = response['password'];

      if (successOtp == true && psw == false) {
        approuter.go('/otpscreen');
      } else if (successOtp == true && successOtp == true) {
      } else {}
    }).onError((ErrorModel error, _) {
      debugPrint('=======Error: ${error.bodyString}');
    });
  }

  Future<void> getOptController({String? pin}) async {
    await baseUrl.onNetworkRequesting(
      url: 'verify-otp/',
      methode: METHODE.post,
      isAuthorize: false,
      body: {
        "phone":
            "+855${phoneNumberController.value.text.replaceFirst("0", "")}",
        "verify_code": pin,
      },
    ).then((response) {
      if (pin != Message(code: pin)) {
        approuter.go('/setpassword');
      } else if (pin == Message(code: pin)) {
        debugPrint('Error: ===');
      } else {
        debugPrint('===else');
      }
    }).onError((ErrorModel error, _) {
      debugPrint('==========Error: ${error.bodyString}');
    });
  }

  Future<void> getSetPasswordController() async {
    await baseUrl.onNetworkRequesting(
        url: 'user/set-password?a',
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          "password": "Tinut12345@?",
          "password_confirmation": "Tinut12345@?"
        }).then((response) {
      debugPrint('===Response$response');
    }).onError((ErrorModel error, stackTrace) {
      debugPrint('===On Error: $error');
    });
  }
}
