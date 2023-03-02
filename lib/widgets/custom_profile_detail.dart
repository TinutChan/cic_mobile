import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constants/color_app/color_app.dart';

class CustomProfileDetail extends StatelessWidget {
  CustomProfileDetail({super.key});

  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    final width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              // tileMode: TileMode.repeated,
              end: Alignment.center,
              stops: const [0.75, 1],
              colors: [
                const Color(0xff0F50A4).withOpacity(1),
                const Color(0xffffffff),
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
              color: Colors.white.withOpacity(0.3),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: height / 6),
                Text(
                  'Name: Tinut',
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
                      'Marketing Manager',
                      style: theme()
                          .textTheme
                          .displaySmall!
                          .copyWith(color: AppColor.blackColor),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Cambodia Investors Corporation',
                  style: theme()
                      .textTheme
                      .displaySmall!
                      .copyWith(color: AppColor.mainColor),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/profile_icons/call.svg',
                    ),
                    SvgPicture.asset(
                      'assets/icons/profile_icons/email.svg',
                    ),
                    SvgPicture.asset('assets/icons/profile_icons/telegram.svg'),
                    SvgPicture.asset('assets/icons/profile_icons/website.svg'),
                  ],
                )
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
              ),
            ),
          ),
        ),
      ],
    );
  }
}
