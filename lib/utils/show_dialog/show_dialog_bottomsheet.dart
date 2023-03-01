import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/color_app/color_app.dart';

// final techSupportController = Get.put(TechicalSupportController());

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
                _launchInBrowser(Uri.parse('https://t.me/NutxT'));
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

Future<void> _launchInBrowser(Uri url) async {
  if (!await canLaunchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
