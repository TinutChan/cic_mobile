import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/helper/api_base_helper.dart';
import '../models/company_profile_model/data_company_model.dart';

class CompanyProfileController extends GetxController {
  var companyProfileModel = DataCompanyProfileModel().obs;
  // var companyProfileList = <CompanyDataModel>[].obs;
  final _apiBaseHelper = ApiBaseHelper();
  final isLoading = false.obs;

  Future<void> companyProfileDetail({int? id}) async {
    isLoading(true);
    try {
      await _apiBaseHelper
          .onNetworkRequesting(
        url: 'member/$id',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        debugPrint('response: $response');
        // companyProfileModel.value =
        //     DataCompanyProfileModel.fromJson(response['data']);
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
