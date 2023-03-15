import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/helper/api_base_helper.dart';
import '../models/company_profile_model/data_profile_detail_model/company_data_model.dart';

class CompanyProfileController extends GetxController {
  var companyProfileModel = CompanyDataModel().obs;
  var listCompanyProfile = <CompanyDataModel>[].obs;
  final _apiBaseHelper = ApiBaseHelper();
  final isLoading = false.obs;

  Future<void> companyProfileDetail({int? id}) async {
    isLoading(true);
    try {
      await _apiBaseHelper
          .onNetworkRequesting(
        url: 'member/company/$id',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        listCompanyProfile.clear();
        response['data'].map((e) {
          companyProfileModel.value = CompanyDataModel.fromJson(e);
          listCompanyProfile.add(CompanyDataModel.fromJson(e));
        }).toList();
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
