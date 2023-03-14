import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/helper/api_base_helper.dart';
import '../models/company_profile_model/zin/zin.dart';

class CompanyProfileController extends GetxController {
  var companyProfileModel = Zin().obs;
  var companyProfileList = <Zin>[].obs;
  var apiBaseHelper = ApiBaseHelper();

  Future companyProfileInformation(int? id) async {
    await apiBaseHelper
        .onNetworkRequesting(
            url: 'member/company/$id', methode: METHODE.get, isAuthorize: true)
        .then((responseData) {
      var response = responseData['data'];
      // debugPrint('= = = =Data $response');
      debugPrint('= = = =Jsone: ${companyProfileModel.value}');
      // companyProfileList.add(response);
      // response.map((e) {
      //   debugPrint('= = = =Element: $e');
      //   companyProfileList.add(Zin.fromJson(e));
      //   debugPrint('= = = =CompanyList: $companyProfileList');
      // }).toList();
    }).onError((ErrorModel error, stackTrace) {
      debugPrint('= = = = ERorr: $error');
    });
    return companyProfileList;
  }
}
