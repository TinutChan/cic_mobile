import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/color_app/color_app.dart';
import '../../modules/account/controller/technical_support_controller.dart';

final techSupportController = Get.put(TechicalSupportController());

showPhoneCallDialogBottom(context) {
  return showModalBottomSheet(
    backgroundColor: AppColor.whiteColor.withOpacity(0.5),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
      ),
    ),
    context: context,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
              title: const Center(
                child: Text('016 873 783'),
              ),
              onTap: () async {
                techSupportController.makePhoneCall('016873783');
              }),
          ListTile(
            title: const Center(child: Text('Cancel')),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
