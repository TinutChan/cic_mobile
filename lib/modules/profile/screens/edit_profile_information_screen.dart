import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/profile/components/update_profile_shimmer.dart';
import 'package:cic_mobile/modules/profile/controller/edit_profile_controller.dart';
import 'package:cic_mobile/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:get/get.dart';

import '../../../utils/show_dialog/show_question_dialog.dart';
import '../../../widgets/custom_textfield.dart';

class EditProfileInformationScreen extends StatefulWidget {
  const EditProfileInformationScreen({super.key});

  @override
  State<EditProfileInformationScreen> createState() =>
      _EditProfileInformationScreenState();
}

class _EditProfileInformationScreenState
    extends State<EditProfileInformationScreen> {
  final profileController = Get.put(ProfileController());
  final _updateProfileController = Get.put(UpdateProfileController());

  @override
  void initState() {
    _updateProfileController.initailEditProfile();
    super.initState();
  }

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
                      _updateProfileController.updateProfileController();
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
      body: Obx(
        () => _updateProfileController.isLoading.value
            ? const UpdateProfileShimmer()
            : GestureDetector(
                onTap: () => FocusScope.of(context).unfocus,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              const CircleAvatar(minRadius: 50.0),
                              const SizedBox(height: 12),
                              GestureDetector(
                                onTap: () {
                                  showAdaptiveActionSheet(
                                    context: context,
                                    actions: <BottomSheetAction>[
                                      BottomSheetAction(
                                        title: const Text('View'),
                                        onPressed: (_) {},
                                      ),
                                      BottomSheetAction(
                                        title: const Text('Chage Photo'),
                                        onPressed: (_) {},
                                      ),
                                      BottomSheetAction(
                                        title: const Text('Remove'),
                                        onPressed: (_) {},
                                      ),
                                    ],
                                    androidBorderRadius: 15,
                                    cancelAction: CancelAction(
                                      title: const Text('Cancel'),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Change Profile Photo',
                                  style:
                                      theme().textTheme.displaySmall!.copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.mainColor,
                                          ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomTextField(
                          textEditingController: _updateProfileController
                              .fullNameEditingController.value,
                          labelText: 'Name',
                          minLines: 1,
                          obscureText: false,
                        ),
                        CustomTextField(
                          textEditingController: _updateProfileController
                              .positionEditingController.value,
                          labelText: 'Position',
                          minLines: 1,
                          obscureText: false,
                        ),
                        CustomTextField(
                          textEditingController: _updateProfileController
                              .companyNameEditingController.value,
                          labelText: 'Company Name',
                          minLines: 1,
                          obscureText: false,
                        ),
                        CustomTextField(
                          textEditingController: _updateProfileController
                              .phoneEditingController.value,
                          labelText: 'Phone Number',
                          minLines: 1,
                          obscureText: false,
                        ),
                        CustomTextField(
                          textEditingController: _updateProfileController
                              .emailEditingController.value,
                          labelText: 'Email',
                          minLines: 1,
                          obscureText: false,
                        ),
                        CustomTextField(
                          textEditingController: _updateProfileController
                              .telegramEditingController.value,
                          labelText: 'Telegram',
                          minLines: 1,
                          obscureText: false,
                        ),
                        CustomTextField(
                          textEditingController: _updateProfileController
                              .websiteEditingController.value,
                          labelText: 'Website',
                          minLines: 1,
                          obscureText: false,
                        ),
                        SizedBox(
                          child: CustomTextField(
                            textEditingController: _updateProfileController
                                .aboutEditingController.value,
                            labelText: 'About Us',
                            minLines: 6,
                            obscureText: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
