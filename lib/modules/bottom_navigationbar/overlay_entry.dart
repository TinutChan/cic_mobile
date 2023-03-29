import 'package:cic_mobile/auth/register_cic/components/backdrop_filter_image.dart';
import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                          GestureDetector(
                            onTap: () {
                              overlay?.remove();
                              // approuter.push('/my-mvp');
                            },
                            child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'My MVP',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                          color: AppColor.blackColor,
                                        ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/mvp_outline.svg',
                                    height: 16,
                                    colorFilter: ColorFilter.mode(
                                      AppColor.mainColor,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: AppColor.greyColor,
                            height: 0,
                          ),
                          GestureDetector(
                            onTap: () {
                              overlay?.remove();
                              // GoRouter.of(context).go('/profile');
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Profile',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                          color: AppColor.blackColor,
                                        ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/profile_outline.svg',
                                    height: 16,
                                    colorFilter: ColorFilter.mode(
                                      AppColor.mainColor,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: AppColor.greyColor,
                            height: 0,
                          ),
                          GestureDetector(
                            onTap: () {
                              overlay?.remove();
                              // approuter.push('/report-screen');
                            },
                            child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Report',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                          color: AppColor.blackColor,
                                        ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/report_outline.svg',
                                    height: 16,
                                    colorFilter: ColorFilter.mode(
                                      AppColor.mainColor,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
