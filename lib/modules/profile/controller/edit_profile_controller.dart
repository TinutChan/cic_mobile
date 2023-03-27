import 'dart:convert';
import 'dart:io';

import 'package:cic_mobile/modules/home/controller/home_controller.dart';
import 'package:cic_mobile/modules/profile/base_repository/profile_repo.dart';
import 'package:cic_mobile/modules/profile/controller/company_controller.dart';
import 'package:cic_mobile/modules/profile/controller/profile_controller.dart';
import 'package:cic_mobile/modules/profile/models/personal_profile_model/data/data_model.dart';
import 'package:cic_mobile/routers/app_router.dart';
import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfileController extends GetxController implements ProfileRepo {
  final _apiBaseHelper = ApiBaseHelper();
  final homeController = Get.put(HomeController());
  final companyProfileController = Get.find<CompanyProfileController>();

  final fullNameEditingController = TextEditingController().obs;
  final positionEditingController = TextEditingController().obs;
  final companyNameEditingController = TextEditingController().obs;
  final phoneEditingController = TextEditingController().obs;
  final emailEditingController = TextEditingController().obs;
  final telegramEditingController = TextEditingController().obs;
  final websiteEditingController = TextEditingController().obs;
  final aboutEditingController = TextEditingController().obs;

  final isLoading = false.obs;
  XFile? imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> updateProfileController() async {
    isLoading(true);
    try {
      await _apiBaseHelper.onNetworkRequesting(
          url: 'c',
          methode: METHODE.post,
          isAuthorize: true,
          body: {
            "member_id": homeController.userModel.value.customerId,
            "full_name": fullNameEditingController.value.text,
            "title": positionEditingController.value.text,
            "company_name": companyNameEditingController.value.text,
            "phone": phoneEditingController.value.text,
            "email": emailEditingController.value.text,
            "telegram": telegramEditingController.value.text,
            "website": websiteEditingController.value.text,
            "about": aboutEditingController.value.text,
          }).then((response) {
        var message = response['message'];
        var success = response['success'];
        if (success == true) {
          approuter.pop();
          onRefreshData();
          debugPrint('$message');
        }
        isLoading(false);
      });
    } catch (e) {
      debugPrint('Catched Erorr: $e');
    }
    isLoading(false);
  }

  final profileController = Get.find<ProfileController>();

  @override
  DataProfileDetail? profileModel;

  @override
  void initailEditProfile() {
    fullNameEditingController.value = TextEditingController(
        text: profileController.profileDetailModel.value.name);
    positionEditingController.value = TextEditingController(
        text: profileController.profileDetailModel.value.position);
    companyNameEditingController.value = TextEditingController(
        text: profileController.profileDetailModel.value.companyName);
    phoneEditingController.value = TextEditingController(
        text: profileController.profileDetailModel.value.phone);
    emailEditingController.value = TextEditingController(
        text: profileController.profileDetailModel.value.email);

    telegramEditingController.value = TextEditingController(
        text: profileController.profileDetailModel.value.telegram);
    websiteEditingController.value = TextEditingController(
        text: profileController.profileDetailModel.value.website);
    aboutEditingController.value = TextEditingController(
        text: profileController.profileDetailModel.value.about);
  }

  @override
  Future updateProfilePicture() async {
    isLoading(true);
    List<int> imageBytes = image!.readAsBytesSync();
    String base64Image = base64Encode(imageBytes);
    await _apiBaseHelper.onNetworkRequesting(
        url: 'user/change-profile',
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          'profile': 'data:image/png;base64,$base64Image',
        }).then((value) {
      debugPrint('Updated Successed: $value');
    });
  }

  File? image;
  String? imagePath;

  Future<dynamic> pickedImage() async {
    isLoading(true);
    try {
      final pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: double.infinity,
        maxHeight: double.infinity,
        imageQuality: 100,
      );
      if (pickedFile != null) {
        image = File(pickedFile.path);
        imagePath = pickedFile.path;
        // debugPrint('ImagePath: $imagePath');
        // debugPrint('Image: $image');
        update();
        isLoading(false);
      } else {
        debugPrint('No image selected.');
      }
      return imagePath;
    } catch (e) {
      // debugPrint('Image Picker error = = = = = $e');
      isLoading(false);
    }
  }

  Future<void> onRefreshData() async {
    profileController.profileDetail(
        id: homeController.userModel.value.customerId);
    companyProfileController.companyProfileDetail(
        id: homeController.userModel.value.customerId);
    update();
    // debugPrint('= = = onRefresh: ');
  }
}
