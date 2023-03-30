import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/modules/bottom_navigationbar/overlay_entry.dart';
import 'package:cic_mobile/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class BottonNavBar extends StatefulWidget {
  const BottonNavBar({super.key, required this.child});
  final Widget child;

  @override
  State<BottonNavBar> createState() => _BottonNavBarState();
}

final homeController = Get.put(HomeController());
bool isActive = false;

class _BottonNavBarState extends State<BottonNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _calculateSelectedIndex(context),
          onTap: (index) {
            _onItemTapped(index, context);
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home_inactive.svg',
                  height: 23),
              label: 'Home',
              activeIcon:
                  SvgPicture.asset('assets/icons/home_active.svg', height: 23),
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/qr_scan_inactive.svg'),
                label: 'QR Scan'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/event.svg'),
              label: 'Event',
              activeIcon: SvgPicture.asset(
                'assets/icons/event.svg',
                colorFilter:
                    ColorFilter.mode(AppColor.mainColor, BlendMode.srcIn),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/more.svg'),
              label: 'More',
              activeIcon: SvgPicture.asset(
                'assets/icons/more.svg',
                colorFilter: ColorFilter.mode(
                  AppColor.mainColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        (context).go('/home');
        break;
      case 1:
        context.go('/qr_scan');
        break;
      case 2:
        (context).go('/event');
        break;
      case 3:
        showOverLay(context);
        debugPrint('on Clicked!');
      // (context).go('/account');
      // break;
    }
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    if (location.startsWith('/home')) {
      isActive = false;
      return 0;
    }
    if (location.startsWith('/qr_scan')) {
      isActive = false;
      return 1;
    }
    if (location.startsWith('/event')) {
      isActive = false;
      return 2;
    }
    if (location.startsWith('/account')) {
      isActive = false;
      return 3;
    }

    return 0;
  }
}
