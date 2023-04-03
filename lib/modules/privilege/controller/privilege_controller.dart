import 'package:cic_mobile/modules/privilege/model/category_item/category_item.dart';
import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivilegeController extends GetxController {
  final _apiBaseHelper = ApiBaseHelper();
  var categoryItem = CategoryItem().obs;
  var listCategoryItem = <CategoryItem>[].obs;

  Future getItem() async {
    _apiBaseHelper
        .onNetworkRequesting(
            url: 'privilege/shop', methode: METHODE.get, isAuthorize: true)
        .then((response) {
      var responseJson = response['data'];
      debugPrint('Response: $responseJson');
    }).onError((ErrorModel error, _) {
      debugPrint('Error :::::::: ${error.bodyString}}');
    });
  }

  Future getCategoryItem() async {
    try {
      _apiBaseHelper
          .onNetworkRequesting(
              url: 'privilege/category',
              methode: METHODE.get,
              isAuthorize: true)
          .then((response) {
        var responseJson = response['data'];
        responseJson.map((e) {
          listCategoryItem.add(CategoryItem.fromJson(e));

          debugPrint('element: $listCategoryItem');
        }).toList();
      }).onError((ErrorModel error, _) {
        debugPrint('Error Body Category item: ${error.bodyString}');
      });
    } catch (e) {
      debugPrint('= = = = = = Erorr Get Item Data $e');
    }
    return listCategoryItem;
  }

  Future onRefresh() async {}
}
