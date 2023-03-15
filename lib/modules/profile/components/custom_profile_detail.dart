import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/color_app/color_app.dart';
import '../../account/controller/technical_support_controller.dart';
import 'custom_contact_more.dart';
import 'shimmer_profile_screen.dart';

class CustomProfileDetail extends StatefulWidget {
  const CustomProfileDetail(
      {super.key,
      this.onCallTapped,
      this.onTelegramTapped,
      this.onEmailTapped,
      this.onWebsiteTapped});

  final VoidCallback? onCallTapped;
  final VoidCallback? onTelegramTapped;
  final VoidCallback? onEmailTapped;
  final VoidCallback? onWebsiteTapped;

  @override
  State<CustomProfileDetail> createState() => _CustomProfileDetailState();
}

class _CustomProfileDetailState extends State<CustomProfileDetail> {
  final techSupportController = Get.put(TechicalSupportController());
  final profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    final profileController = Get.put(ProfileController());
    final height = MediaQuery.of(context).size.width;
    final width = MediaQuery.of(context).size.width;

    return Obx(
      () => profileController.isLoading.value
          ? const ShimmerProfileScreen()
          : Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.4, 0.62],
                      colors: [
                        Color(0xff0F50A4),
                        Color(0xffffffff),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  child: Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.35),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: height / 6),
                        Text(
                          '${profileController.profileDetailModel.value.name}',
                          style: theme()
                              .textTheme
                              .displayLarge!
                              .copyWith(color: AppColor.blackColor),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.verified_user_outlined, size: 18),
                            Text(
                              '${profileController.profileDetailModel.value.position}',
                              style: theme()
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(color: AppColor.blackColor),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          // ignore: unnecessary_null_comparison
                          profileController
                                  .profileDetailModel.value.companyName ??
                              "Company Name",
                          style: theme()
                              .textTheme
                              .displaySmall!
                              .copyWith(color: AppColor.mainColor),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            profileController.profileDetailModel.value.phone !=
                                    null
                                ? GestureDetector(
                                    onTap: widget.onCallTapped,
                                    child: const ContactMore(
                                      icons:
                                          'assets/icons/profile_icons/call.svg',
                                      title: 'Call',
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: widget.onCallTapped == null
                                        ? widget.onCallTapped
                                        : null,
                                    child: const ContactMore(
                                      icons:
                                          'assets/icons/profile_icons/call.svg',
                                      title: 'Call',
                                      colors: ColorFilter.mode(
                                          Colors.grey, BlendMode.srcIn),
                                    ),
                                  ),
                            profileController.profileDetailModel.value.email !=
                                    null
                                ? GestureDetector(
                                    onTap: widget.onEmailTapped == null
                                        ? widget.onCallTapped
                                        : null,
                                    child: const ContactMore(
                                      icons:
                                          'assets/icons/profile_icons/email.svg',
                                      title: 'Email',
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: widget.onEmailTapped == null
                                        ? widget.onCallTapped
                                        : null,
                                    child: const ContactMore(
                                      icons:
                                          'assets/icons/profile_icons/email.svg',
                                      title: 'Email',
                                      colors: ColorFilter.mode(
                                          Colors.grey, BlendMode.srcIn),
                                    ),
                                  ),
                            profileController
                                        .profileDetailModel.value.telegram !=
                                    null
                                ? GestureDetector(
                                    onTap: widget.onTelegramTapped,
                                    child: const ContactMore(
                                      icons:
                                          'assets/icons/profile_icons/telegram.svg',
                                      title: 'Telegram',
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: widget.onTelegramTapped == null
                                        ? widget.onCallTapped
                                        : null,
                                    child: const ContactMore(
                                      icons:
                                          'assets/icons/profile_icons/telegram.svg',
                                      title: 'Telegram',
                                      colors: ColorFilter.mode(
                                          Colors.grey, BlendMode.srcIn),
                                    ),
                                  ),
                            profileController.profileDetailModel.value.name !=
                                    null
                                ? GestureDetector(
                                    onTap: widget.onWebsiteTapped,
                                    child: const ContactMore(
                                      icons:
                                          'assets/icons/profile_icons/website.svg',
                                      title: 'Website',
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: widget.onWebsiteTapped == null
                                        ? widget.onCallTapped
                                        : null,
                                    child: const ContactMore(
                                      icons:
                                          'assets/icons/profile_icons/website.svg',
                                      title: 'Website',
                                      colors: ColorFilter.mode(
                                        Colors.grey,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 117,
                  right: 117,
                  top: 80,
                  child: Container(
                    height: height / 4,
                    width: width,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3,
                        color: Colors.white,
                      ),
                    ),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: AppColor.mainColor,
                        ),
                      ),
                      child:
                          profileController.profileDetailModel.value.profile !=
                                  null
                              ? Container(
                                  clipBehavior: Clip.antiAlias,
                                  width: width,
                                  height: height,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 3,
                                      color: AppColor.mainColor,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        '${profileController.profileDetailModel.value.profile}',
                                      ),
                                      // 'https://lh3.googleusercontent.com/nKc2zdiPVN77yVjcJkbFZ902bOiq7p1MofsfrfBkgXI1SFkJRRAlEsn2HACvzvfjDp1xZaYR9Md1_Uvv2UlyBcHGVz_2kIpbKai0nWL5'),
                                    ),
                                  ),
                                )
                              : CircleAvatar(
                                  backgroundColor: AppColor.blueColor99,
                                  child: Text(
                                    profileController
                                        .profileDetailModel.value.name![0],
                                  ),
                                ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
