import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/helper/shared_preference.dart';
import '../../../utils/helper/local_storage.dart';

class LoginController extends GetxController {
  final localStorae = LocalStorage();
  final phoneNumberController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final phone = ''.obs;
  final pass = ''.obs;
  final baseUrl = ApiBaseHelper();
  final isLoading = false.obs;
  final token = ''.obs;

  Future<void> getLoginControler(BuildContext context) async {
    isLoading(true);

    await baseUrl.onNetworkRequesting(
        url: 'login',
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          'phone':
              '+855${phoneNumberController.value.text.replaceFirst("0", "")}',
          'password': passwordController.value.text,
        }).then((response) async {
      context.go('/');

      LocalDataStorage.storeCurrentUser(response['access_token'].toString());
      final token = await LocalDataStorage.getCurrentUser();
      debugPrint('----------------------$token');
    }).onError((ErrorModel error, statusCode) {
      debugPrint('===OnError: ${error.bodyString} ${error.statusCode}');
      isLoading(false);
    });
  }

  
  functionFetchToken() async {
    token.value = await LocalDataStorage.getCurrentUser();
  }
}
