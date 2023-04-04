import 'package:cic_mobile/modules/privilege/model/category_item/category_item.dart';
import 'package:cic_mobile/modules/privilege/model/privilate_pagination/privilage_pagination_model.dart';
import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/privilege_data/privilege_data.dart';

class PrivilegeController extends GetxController {
  final _apiBaseHelper = ApiBaseHelper();
  var listCategoryItem = <CategoryItem>[].obs;
  final isLoading = false.obs;
  var isLoadinggetListAll = false.obs;

  //!Pagination

  var currentPage = 1.obs;
  var lastPage = 2.obs;
  PrivilagePagination privilageStoreList = PrivilagePagination();
  var privilageList = <PrivilegeData>[];

  Future getListAllStor(int? currentPgae) async {
    isLoadinggetListAll(true);
    try {
      await _apiBaseHelper
          .onNetworkRequesting(
        url: 'privilege/shop?page=$currentPgae',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        privilageStoreList = PrivilagePagination.fromJson(response);
        privilageStoreList.data!.map((e) {
          privilageList.add(e);
          debugPrint('= = = = = = = PrivilageList: $privilageList');
        }).toList();
        debugPrint('= = = = = = = Privilage: $privilageStoreList');
        currentPage.value++;
        debugPrint('= = = = = = = CurrentPage: ${currentPage.value}');
        lastPage.value = privilageStoreList.meta!.lastPage!;
        debugPrint('= = = = = = = Last Page: ${lastPage.value}');
        isLoadinggetListAll(false);
      }).onError((ErrorModel error, _) {
        isLoadinggetListAll(false);
      });
    } catch (e) {
      debugPrint('Error::: $e');
    }
    isLoadinggetListAll(false);
    return privilageStoreList;
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
    getListAllStor(currentPage.value);
  }
}
