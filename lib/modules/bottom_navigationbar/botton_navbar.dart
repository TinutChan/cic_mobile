import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/modules/account/screens/account_screen.dart';
import 'package:cic_mobile/modules/event/screens/event_screen.dart';
import 'package:cic_mobile/modules/home/controller/home_controller.dart';
import 'package:cic_mobile/modules/home/screens/home_screen.dart';
import 'package:cic_mobile/modules/qr_scan/screens/qr_scan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottonNavBar extends StatefulWidget {
  const BottonNavBar({super.key});

  @override
  State<BottonNavBar> createState() => _BottonNavBarState();
}

final homeController = Get.put(HomeController());

class _BottonNavBarState extends State<BottonNavBar> {
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    QRScanScreen(),
    EventScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      homeController.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(homeController.currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: homeController.currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon:
                SvgPicture.asset('assets/icons/home_inactive.svg', height: 23),
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
            icon: SvgPicture.asset('assets/icons/account_inactive.svg'),
            label: 'Account',
            activeIcon: SvgPicture.asset('assets/icons/account_active.svg'),
          ),
        ],
      ),
    );
  }
}
