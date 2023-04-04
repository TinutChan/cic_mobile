import 'package:cic_mobile/modules/privilege/model/category_item/category_item.dart';
import 'package:cic_mobile/modules/privilege/model/privilate_pagination/privilage_pagination_model.dart';
import 'package:cic_mobile/modules/privilege/model/privilege_data/privilege_data.dart';
import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivilegeController extends GetxController {
  final _apiBaseHelper = ApiBaseHelper();
  var listCategoryItem = <CategoryItem>[].obs;
  // var listPrivilageShop = <PrivilagePagination>[].obs;
  var model = PrivilegeData().obs;
  final isLoading = false.obs;

  PrivilagePagination data = PrivilagePagination();

  Future getListAllStor() async {
    isLoading(true);
    try {
      await _apiBaseHelper
          .onNetworkRequesting(
        url: 'privilege/shop',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        // debugPrint('---- is respone $response');

        data = PrivilagePagination.fromJson(response);
        debugPrint('---- is listPrivilageShop $listCategoryItem');
        isLoading(false);
      }).onError((ErrorModel error, _) {
        debugPrint('Error :::::::: ${error.bodyString}}');
        isLoading(false);
      });
    } catch (e) {
      debugPrint('Error::: $e');
    }
    return data;
  }

  Future getCategoryItem() async {
    isLoading(true);
    try {
      await _apiBaseHelper
          .onNetworkRequesting(
              url: 'privilege/category',
              methode: METHODE.get,
              isAuthorize: true)
          .then((response) {
        var responseJson = response['data'];
        responseJson.map((e) {
          listCategoryItem.add(CategoryItem.fromJson(e));
        }).toList();
        isLoading(false);
      }).onError((ErrorModel error, _) {
        debugPrint('Error Body Category item: ${error.bodyString}');
        isLoading(false);
      });
    } catch (e) {
      debugPrint('= = = = = = Erorr Get Item Data $e');
    }
    return listCategoryItem;
  }

  Future onRefresh() async {
    getCategoryItem();
    getListAllStor();
    update();
  }
}
