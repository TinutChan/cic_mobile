import 'package:cic_mobile/modules/privilege/model/category_item/category_item.dart';
import 'package:cic_mobile/modules/privilege/model/privilage_meta/privilage_meta_model.dart';
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

  var privilageList = <PrivilegeData>[];

  PrivilageMetaModel? paginationModel;

  Future<List<PrivilegeData>> getListAllStore(int page) async {
    isLoadinggetListAll(true);

    try {
      await _apiBaseHelper
          .onNetworkRequesting(
        url: 'privilege/shop?page=$page',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        if (page == 1) {
          privilageList.clear();
        }

        response['data']?.map((e) {
          privilageList.add(PrivilegeData.fromJson(e));
        }).toList();

        if (response['meta'] != null) {
          paginationModel = PrivilageMetaModel.fromJson(response['meta']);
        }

        isLoadinggetListAll(false);
      }).onError((ErrorModel error, _) {
        isLoadinggetListAll(false);
      });
    } catch (e) {
      debugPrint('Error::: $e');
    }
    isLoadinggetListAll(false);
    return privilageList;
  }

  final currentPage = 1.obs;

  void initialScreen() {
    currentPage.value = 1;
    paginationModel = null;
  }

  Future<void> fetchAllStorePagination() async {
    // if ( currentPage.value) {
    //   currentPage.value++;
    // }'

    if (paginationModel != null &&
        currentPage.value < paginationModel!.lastPage!) {
      currentPage.value++;
      await getListAllStore(currentPage.value);
    }
    debugPrint('Current Page = ${currentPage.value}');

    // if (currentPage.value < lastPage.value) {
    //   currentPage.value++;
    // } else {
    //   null;
    //   debugPrint('= = = = Stopped');
    // }
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
    initialScreen();
    getListAllStore(1);
  }
}
