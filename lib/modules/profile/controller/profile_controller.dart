import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/helper/local_storage.dart';

class ProfileController extends GetxController {
  var apibaseHelper = ApiBaseHelper();
  final getCurrentUser = LocalDataStorage.getCurrentUser();

  Future<void> profileController() async {
    await apibaseHelper.onNetworkRequesting(
        url: 'member',
        methode: METHODE.get,
        isAuthorize: true,
        body: {
          'Authorization': 'Bearer $getCurrentUser',
        }).then((response) {
      debugPrint('= = = = =Get Response: $response');
    }).onError((ErrorModel error, stackTrace) {
      debugPrint('= = = = = Error: ${error.bodyString}');
    });
  }
}
