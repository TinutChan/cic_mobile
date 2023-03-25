import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../auth/login_cic/controllers/login_controller.dart';
import '../models/personal_profile_model/data/data_model.dart';

class ProfileController extends GetxController {
  final _apibaseHelper = ApiBaseHelper();
  final loginController = Get.put(LoginController());
  var profileDetailModel = DataProfileDetail().obs;
  var isLoading = false.obs;

  Future<void> profileDetail({int? id}) async {
    isLoading.value = true;
    try {
      await _apibaseHelper
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

  Future addCompany({required int id}) async {
    _apibaseHelper.onNetworkRequesting(
        url: 'company/createOrUpdate',
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          "member_id": 473,
          "company_name": "Z1 Flexible",
          "company_slogan": "Provide system",
          "phone_number": "compareVal.value.phone",
          "email": "compareVal.value.email",
          "address": "compareVal.value.address",
          "company_product_and_service":
              "compareVal.value.companyproductandservice",
          "personal_interest": " compareVal.value.personalinterest"
        }).then((response) {
      var res = response['success'];
      debugPrint(' = = = $res');
    }).onError((ErrorModel error, stackTrace) => null);
  }
}
