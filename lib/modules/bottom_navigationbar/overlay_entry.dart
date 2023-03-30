import 'package:cic_mobile/auth/register_cic/components/backdrop_filter_image.dart';
import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/modules/bottom_navigationbar/custom_menu_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

showOverLay(BuildContext context) {
  OverlayState? overlayState = Overlay.of(context);
  OverlayEntry? overlay;
  overlay = OverlayEntry(
    builder: (_) => Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () {
          overlay?.remove();
        },
        child: Container(
          color: AppColor.greyColor.withOpacity(0.94),
          alignment: AlignmentDirectional.bottomEnd,
          child: BackDropFiltterImage(
            sigmaX: 8,
            sigmaY: 8,
            child: Stack(
              children: [
                Positioned(
                  bottom: 60,
                  right: 30,
                  child: Container(
                    height: 140,
                    width: 165,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.whiteColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MenuItem(
                            onTap: () {
                              context.go('/my_mvp');
                              overlay!.remove();
                            },
                            title: 'My MVP',
                            leadingIcon: 'assets/icons/event.svg',
                            actionIcon: 'assets/icons/event.svg',
                          ),
                          Divider(
                            color: AppColor.greyColor,
                            height: 0,
                          ),
                          MenuItem(
                            onTap: () {
                              context.go('/profile');
                              overlay!.remove();
                            },
                            title: 'Profile',
                            leadingIcon: 'assets/icons/event.svg',
                            actionIcon: 'assets/icons/event.svg',
                          ),
                          Divider(
                            color: AppColor.greyColor,
                            height: 0,
                          ),
                          MenuItem(
                            onTap: () {
                              context.go('/report');
                              overlay!.remove();
                            },
                            title: 'My MVP',
                            leadingIcon: 'assets/icons/event.svg',
                            actionIcon: 'assets/icons/event.svg',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 32,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/more.svg',
                        colorFilter: ColorFilter.mode(
                          AppColor.mainColor,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        'More',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                color: AppColor.mainColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
  overlayState.insert(overlay);
}
