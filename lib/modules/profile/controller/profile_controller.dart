import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../auth/login_cic/controllers/login_controller.dart';
import '../models/personal_profile_model/data/data_model.dart';

class ProfileController extends GetxController {
  var apibaseHelper = ApiBaseHelper();
  final loginController = Get.put(LoginController());
  var profileDetailModel = DataProfileDetail().obs;
  var isLoading = false.obs;

  Future<void> profileDetail({int? id}) async {
    isLoading.value = true;
    try {
      await apibaseHelper
          .onNetworkRequesting(
        url: 'member/$id',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        profileDetailModel.value = DataProfileDetail.fromJson(response['data']);
      }).onError((ErrorModel error, _) {
        debugPrint(error.bodyString.toString());
      });
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
