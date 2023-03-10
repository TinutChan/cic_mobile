import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:get/get.dart';

import '../../../utils/show_dialog/show_question_dialog.dart';

class EditProfileInformationScreen extends StatelessWidget {
  EditProfileInformationScreen({super.key});

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.whiteColor,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: theme().textTheme.bodyLarge!.copyWith(
                fontSize: 18,
                color: AppColor.blackColor,
              ),
        ),
        leading: IconButton(
          onPressed: () {
            context.pop();
            //  showQuestionAlertDialog(
            //   context: context,
            //   title: "Are You Sure?",
            //   content: "You want to cancel!",
            //   onPressed: () {
            //     context.go('/profile');
            //   },
          },
          icon: Icon(Icons.close, color: AppColor.blackColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  showQuestionAlertDialog(
                    context: context,
                    title: "Are You Sure?",
                    content: "You want to save!",
                    onPressed: () {
                      context.pop();
                      // context.go('/profile');
                    },
                  );
                },
                child: Text(
                  'Done',
                  style: theme()
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 18, color: AppColor.mainColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
