import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/helper/api_base_helper.dart';
import '../models/company_profile_model/data_company_model.dart';

class CompanyProfileController extends GetxController {
  var companyProfileModel = CompanyDataModel().obs;
  var companyProfileList = <CompanyDataModel>[].obs;
  var apiBaseHelper = ApiBaseHelper();

  Future companyProfileInformation(int? id) async {
    await apiBaseHelper
        .onNetworkRequesting(
            url: 'member/company/$id', methode: METHODE.get, isAuthorize: true)
        .then((responseData) {
      var response = responseData['data'];
      response.map((e) {
        debugPrint('= = = Element: $e');
        companyProfileList.add(CompanyDataModel.fromJson(e));
        debugPrint('= = = $companyProfileList');
      }).toList();
    }).onError((ErrorModel error, stackTrace) {
      debugPrint('= = = = ERorr: $error');
    });
    return companyProfileList;
  }
}
