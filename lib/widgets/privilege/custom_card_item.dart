import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/privilege/controller/privilege_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({
    super.key,
    this.height,
    this.isHeight,
    this.status,
    this.title,
    this.subtitle,
    this.address,
    this.offier,
    this.image,
    this.isFavorite,
    this.onTap,
  });

  final double? height;

  final bool? isHeight;
  final VoidCallback? onTap;
  final String? status;
  final String? title;
  final String? subtitle;
  final String? address;
  final String? offier;
  final String? image;
  final bool? isFavorite;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PrivilegeController());
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10.0),
      width: double.infinity,
      height: isHeight == false ? height : 104,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(0.3, 0.5),
            blurStyle: BlurStyle.solid,
            // spreadRadius: 5,
            blurRadius: 5,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: NetworkImage('$image'), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 5.0,
                left: 0,
                child: GestureDetector(
                  onTap: onTap,
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: SvgPicture.asset(
                      'assets/icons/privillege/fav_inactive.svg',
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(width: 15.0),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        status ?? '',
                        style: theme().textTheme.labelSmall!.copyWith(
                            color: status == 'Closed'
                                ? Colors.red
                                : AppColor.greenColor),
                      ),
                      Text(
                        title ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme()
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Text(
                          subtitle ?? '',
                          maxLines: 1,
                          style: theme().textTheme.titleSmall!.copyWith(
                                color: AppColor.grey4Color,
                                overflow: TextOverflow.ellipsis,
                                fontSize: 14,
                              ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          SvgPicture.asset(
                              'assets/icons/privillege/location.svg'),
                          const SizedBox(width: 5.5),
                          Expanded(
                            child: Text(
                              address ?? '',
                              overflow: TextOverflow.ellipsis,
                              style: theme().textTheme.titleSmall,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 25,
                  decoration: BoxDecoration(
                    gradient: offier != null && offier!.isNotEmpty
                        ? const LinearGradient(
                            colors: [
                              Color(0xffFFC837),
                              Color(0xffFF8008),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )
                        : null,
                  ),
                  child: Text(
                    offier != null ? '${offier!}%' : '',
                    style: theme()
                        .textTheme
                        .displaySmall!
                        .copyWith(color: AppColor.whiteColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
