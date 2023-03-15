import 'package:cic_mobile/modules/home/controller/home_controller.dart';
import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateProfileController extends GetxController {
  final _apiBaseHelper = ApiBaseHelper();
  final homeController = Get.put(HomeController());

  final fullNameEditingController = TextEditingController().obs;
  final positionEditingController = TextEditingController().obs;
  final companyNameEditingController = TextEditingController().obs;
  final phoneEditingController = TextEditingController().obs;
  final emailEditingController = TextEditingController().obs;
  final telegramEditingController = TextEditingController().obs;
  final websiteEditingController = TextEditingController().obs;
  final aboutEditingController = TextEditingController().obs;

  final isLoading = false.obs;

  Future<void> updateProfileController() async {
    isLoading(true);
    try {
      await _apiBaseHelper.onNetworkRequesting(
          url: 'member-profile/update',
          methode: METHODE.post,
          isAuthorize: true,
          body: {
            "member_id": homeController.userModel.value.customerId,
            "full_name": "Tinut",
            "title": "Flutter Developer",
            "company_name": "Z1-Flexible Solution Co,.Ltd",
            "phone": "",
            "email": "",
            "telegram": "",
            "website": "",
            "about": "Helle guy!",
          }).then((response) {
        debugPrint('Response: $response');
        isLoading(false);
      });
    } catch (e) {
      debugPrint('Catched Erorr: $e');
    }
    isLoading(false);
  }
}
