import 'package:cic_mobile/modules/privilege/model/category_item/category_item.dart';
import 'package:cic_mobile/modules/privilege/model/location_address_privilage/location_address_data/location_address_data_model.dart';
import 'package:cic_mobile/modules/privilege/model/location_address_privilage/location_address_model.dart';
import 'package:cic_mobile/modules/privilege/model/privilage_meta/privilage_meta_model.dart';
import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/privilege_data/privilege_data.dart';

class PrivilegeController extends GetxController {
  final _apiBaseHelper = ApiBaseHelper();
  var listCategoryItem = <CategoryItem>[].obs;

  // final isLoading = false.obs;
  var isLoadinggetListAll = false.obs;
  final isLoadingAllFavList = false.obs;
  final isLoadingAllCategory = false.obs;

  final privilageList = <PrivilegeData>[].obs;

  PrivilageMetaModel? paginationModel;
  var lastPage = 0.obs;
  Future<List<PrivilegeData>> getListAllStore({int? page}) async {
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
        // debugPrint("-------test-----${response['data']}");
        response['data']?.map((e) {
          privilageList.add(PrivilegeData.fromJson(e));
        }).toList();

        if (response['meta'] != null) {
          paginationModel = PrivilageMetaModel.fromJson(response['meta']);
        }
      }).onError((ErrorModel error, _) {
        isLoadinggetListAll(false);
      });
    } catch (e) {
      debugPrint(':::: Error on Privilage data :::: ${e.toString()}');
    }
    isLoadinggetListAll(false);
    return privilageList;
  }

  //! fetchFavStore
  Future<void> fetchIsFavouriteStore({required bool isFav}) async {
    isLoadingAllFavList(true);
    try {
      privilageList.clear();
      await _apiBaseHelper
          .onNetworkRequesting(
              url: 'privilege/shop?favorite=${!isFav}',
              methode: METHODE.get,
              isAuthorize: true)
          .then((response) {
        (response['data'] as List).map((e) {
          privilageList.add(PrivilegeData.fromJson(e));
        }).toList();

        isLoadingAllFavList(false);
      }).onError((ErrorModel error, _) {
        debugPrint('= = = = = Not True: ${error.bodyString}');
        isLoadingAllFavList(false);
      });
    } catch (e) {
      debugPrint('= = = = = On Error: $e');
      isLoadingAllFavList(true);
    }
  }

  final currentPage = 1.obs;
  void initialScreen() {
    currentPage.value = 1;
    paginationModel = null;
  }

  Future<void> fetchAllStorePagination() async {
    if (paginationModel != null &&
        currentPage.value < paginationModel!.lastPage!) {
      currentPage.value++;
      await getListAllStore(page: currentPage.value);
    }
  }

  //! Show All Category
  Future getCategoryItem() async {
    isLoadingAllCategory(true);
    try {
      listCategoryItem.clear();
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
        isLoadingAllCategory(false);
      }).onError((ErrorModel error, _) {
        debugPrint('Error Body Category item: ${error.bodyString}');
        isLoadingAllCategory(false);
      });
    } catch (e) {
      debugPrint('= = = = = = Erorr Get Item Data $e');
    }
    return listCategoryItem;
  }

  void refreshNewCategoryPriItem() {
    getCategoryItem();
  }

  //! search on category screen

  Future<void> searchAllCategory(String value) async {
    try {
      await _apiBaseHelper
          .onNetworkRequesting(
              url: '/privilege/category?term=$value',
              methode: METHODE.get,
              isAuthorize: true)
          .then((value) {
        debugPrint('value: $value');
      }).onError((ErrorModel error, _) {
        debugPrint('====Error====${error.bodyString}');
      });
    } catch (e) {
      debugPrint('==Catch element==$e=====');
    }
  }

  //! Pagination

  Future onRefresh() async {
    initialScreen();
    getListAllStore(page: 1);
  }

  final listLocationAddress = <LocationAdressData>[].obs;
  final locationSelected = 0.obs;
  final isSelectLocation = false.obs;
  // final listLocationModel = LocationAddressModel;
  LocationAddressModel? seePriMoreLocation;

  Future filterLocationPrivilage({int? id}) async {
    try {
      listLocationAddress.clear();
      await _apiBaseHelper
          .onNetworkRequesting(
              url: 'privilege/address?page=$id',
              methode: METHODE.get,
              isAuthorize: true)
          .then((response) {
        if (id == 1) {
          listLocationAddress.clear();
        }

        response['data']?.map((e) {
          listLocationAddress.add(LocationAdressData.fromJson(e));
          debugPrint('Data: $seePriMoreLocation');
        }).toList();

        if (response['meta'] != null) {
          seePriMoreLocation = LocationAddressModel.fromJson(response['meta']);
          debugPrint('Meta: $seePriMoreLocation');
        }
      }).onError((ErrorModel error, _) {
        debugPrint(
            '= = = Error Filter Location Privilage = = =${error.bodyString}');
      });
    } catch (e) {
      debugPrint('= = = = = Catch Error = = = = = $e');
    }
    return listLocationAddress;
  }

  void priLocationCheckedBox(int index) {
    if (listLocationAddress[index] == listLocationAddress[index]) {
      isSelectLocation.value = !isSelectLocation.value;
      debugPrint('index: ${listLocationAddress[0]}');
      debugPrint('value: ${isSelectLocation.value}');
    }
    // debugPrint('Value: ${isSelectLocation.value}');
  }
  // var selectedValues = <String>[].obs;

  // void priLocationCheckedBox({String? value, required bool isSelected}) {
  //   if (isSelected) {
  //     selectedValues.add(value!);
  //   } else {
  //     selectedValues.remove(value);
  //   }
  // }

  final priLocationCurrentPage = 0.obs;
  void priLocationInit() {
    priLocationCurrentPage.value = 1;
    seePriMoreLocation = null;
  }

  Future<void> fetchAllLocationSeeMore() async {
    if (seePriMoreLocation != null &&
        priLocationCurrentPage.value <
            seePriMoreLocation!.meta![1].lastPage!) {}
  }
}
