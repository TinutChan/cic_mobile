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
          url: 'member-profile/update',
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
          // approuter.go('/profile');
          // SnackBar(
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10.0)),
          //   duration: const Duration(seconds: 5),
          //   backgroundColor: Colors.green,
          //   content: message,
          // );
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
  void updateProfile() {}

  Future<dynamic> pickedImage() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: double.infinity,
        maxHeight: double.infinity,
        imageQuality: 100,
      );
      return await pickedFile!.readAsBytes();
    } catch (e) {
      debugPrint('Image Picker error => $e');
    }
  }

  Future<void> onRefreshData() async {
    profileController.profileDetail(
        id: homeController.userModel.value.customerId);
    companyProfileController.companyProfileDetail(
        id: homeController.userModel.value.customerId);
    update();
    debugPrint('= = = onRefresh: ');
  }
}
