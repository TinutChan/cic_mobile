import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/color_app/color_app.dart';
import '../../modules/account/controller/technical_support_controller.dart';

final techSupportController = Get.put(TechicalSupportController());

showDialogBottom(context) {
  return showModalBottomSheet(
    backgroundColor: AppColor.whiteColor.withOpacity(0.7),
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
              title: const Center(child: Text('Chat Telegram')),
              onTap: () async {
                techSupportController
                    .launchInBrowser(Uri.parse('https://t.me/NutxT'));
              }),
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text('Photo'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
