import 'package:cic_mobile/constants/app_icon/app_icon.dart';
import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/modules/profile/components/custom_popup_menu_button.dart';
import 'package:cic_mobile/modules/profile/controller/company_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/font_app/theme_data.dart';
import '../../../widgets/custom_slider.dart';

class CompanyProfileScreen extends StatelessWidget {
  const CompanyProfileScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTapped,
    required this.desc,
    this.sildeImage,
    this.productService,
    required this.addCompany,
  });

  final String? image;
  final String? title;
  final String? subtitle;
  final VoidCallback? onTapped;
  final String? desc;
  final String? sildeImage;
  final String? productService;
  final VoidCallback? addCompany;

  @override
  Widget build(BuildContext context) {
    final companyProfileController = Get.put(CompanyProfileController());
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  image ??
                      'https://career.astra.co.id/static/media/image_not_available1.94c0c57d.png',
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title',
                    style: theme().textTheme.displayMedium!.copyWith(
                          color: AppColor.blackColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                  Text(
                    '$subtitle',
                    style: theme().textTheme.titleSmall!.copyWith(
                          color: AppColor.mainColor,
                        ),
                  ),
                ],
              ),
              const Spacer(),
              CustomPopUpMenuButton(
                itemsOption: [
                  PopupMenuItems(
                    value: 0,
                    title: companyProfileController
                        .companyProfileModel.value.address,
                    icon: SvgPicture.asset(AppIcon.phonecall),
                  ),
                  PopupMenuItems(
                    value: 1,
                    title: companyProfileController
                        .companyProfileModel.value.email,
                    icon: SvgPicture.asset(AppIcon.message),
                  ),
                  PopupMenuItems(
                    value: 2,
                    title: companyProfileController
                        .companyProfileModel.value.address,
                    icon: SvgPicture.asset(AppIcon.location),
                  ),
                  // companyProfileController.companyProfileModel.value.address ==
                  //         null
                  //     ?
                  if (companyProfileController
                              .companyProfileModel.value.website !=
                          null &&
                      companyProfileController
                          .companyProfileModel.value.website!.isEmpty &&
                      companyProfileController
                              .companyProfileModel.value.website !=
                          '')
                    PopupMenuItems(
                      value: 3,
                      title: companyProfileController
                          .companyProfileModel.value.website,
                      icon: SvgPicture.asset(AppIcon.website),
                    ),
                  PopupMenuItems(
                    value: 4,
                    title: 'Edit company info',
                    icon: SvgPicture.asset(AppIcon.edit),
                  ),
                ],
                onSelected: (value) => onSelected(context, value),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'About',
            style: theme().textTheme.displayMedium,
          ),
          const SizedBox(height: 12),
          Text(
            '$desc',
            style: theme().textTheme.displaySmall,
          ),
          Text(
            'Product and Service',
            style: theme().textTheme.displayMedium,
          ),
          Text(
            '$productService',
            style: theme().textTheme.displaySmall,
          ),
          const SizedBox(height: 20),
          const CustomSlider(
            margin: EdgeInsets.only(right: 12.0),
            padEnds: false,
            viewportFraction: 0.9,
          ),
          const SizedBox(height: 15.0),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              minimumSize: const Size(double.infinity, 50),
              elevation: 0,
              backgroundColor: AppColor.mainColor.withOpacity(0.08),
            ),
            onPressed: companyProfileController.listCompanyProfile.isEmpty
                ? addCompany
                : null,
            icon: const Icon(Icons.add_circle_outline),
            label: const Text('Add Company'),
          ),
        ],
      ),
    );
  }

  onSelected(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.push('');
    }
    switch (index) {
      case 1:
        context.push('');
    }
    switch (index) {
      case 2:
        context.push('');
    }
    switch (index) {
      case 3:
        context.push('');
    }
    switch (index) {
      case 4:
        context.push('/profile/update/company');
    }
  }
}
