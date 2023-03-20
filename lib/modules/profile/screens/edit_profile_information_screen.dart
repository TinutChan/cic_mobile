import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/profile/components/update_profile_shimmer.dart';
import 'package:cic_mobile/modules/profile/controller/edit_profile_controller.dart';
import 'package:cic_mobile/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:get/get.dart';

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
          },
          icon: Icon(Icons.close, color: AppColor.blackColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  _updateProfileController.updateProfileController();
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
                              CircleAvatar(
                                minRadius: 50.0,
                                child: Container(
                                  clipBehavior: Clip.antiAlias,
                                  width: 90,
                                  height: 90,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.amber,
                                  ),
                                  child: Image.network(
                                    'https://scontent.fpnh11-1.fna.fbcdn.net/v/t39.30808-6/324592476_517960903784950_7732506958625149910_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFkz8ZU7HhojJPzNronw7FQyMa8OiP3ymvIxrw6I_fKa0V5i8fJQaBOEDtYBx8BT5DZQh0d5f3XBGWK_uUhIxOk&_nc_ohc=rxMWWWjzWPwAX8lAdjX&_nc_ht=scontent.fpnh11-1.fna&oh=00_AfAnQ_N_tfkRpfK9KlveAQz9JxBhuD3C2kNOCX12S71s0Q&oe=641DAD48',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
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
                                        onPressed: (context) {
                                          _updateProfileController
                                              .pickedImage();
                                        },
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
