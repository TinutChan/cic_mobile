import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../auth/login_cic/controllers/login_controller.dart';
import '../models/personal_profile_model/user_profile_model.dart';

class ProfileController extends GetxController {
  var apibaseHelper = ApiBaseHelper();
  final loginController = Get.put(LoginController());

  var list = <UserProfileModel>[].obs;
  var profileModel = UserProfileModel().obs;
  var isLoading = false.obs;

  Future profileController(int? id) async {
    isLoading(true);
    await apibaseHelper
        .onNetworkRequesting(
            url: 'member/$id', methode: METHODE.get, isAuthorize: true)
        .then((responseData) {
      profileModel.value = UserProfileModel.fromJson(responseData);
      // debugPrint('= = = = Data: $profileModel');
      isLoading(false);
    }).onError((ErrorModel error, stackTrace) {
      debugPrint('= = = = = Error: ${error.bodyString}');
      isLoading(false);
    });
    return profileModel.value;
  }
}
