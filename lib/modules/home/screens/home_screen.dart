import 'package:carousel_slider/carousel_slider.dart';
import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/app_font.dart';
import 'package:cic_mobile/modules/account/screens/account_screen.dart';
import 'package:cic_mobile/modules/home/controller/home_controller.dart';
import 'package:cic_mobile/modules/qr_scan/screens/qr_scan_screen.dart';
import 'package:cic_mobile/routers/app_router.dart';
import 'package:cic_mobile/utils/helper/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController con = CarouselController();

  List<String> img = [
    'assets/images/slide_show/slideshow1.png',
    'assets/images/slide_show/slideshow2.png',
    'assets/images/slide_show/slideshow1.png',
    'assets/images/slide_show/slideshow2.png',
  ];

  final List _screen = [
    const HomeScreen(),
    const QRScanScreen(),
    const AccountScreen(),
  ];

  // final List<Widget> _iconsInactive = [
  //   SvgPicture.asset('assets/icons/home_inactive.svg'),
  //   SvgPicture.asset('assets/icons/qr_scan_inactive.svg'),
  //   SvgPicture.asset('assets/icons/account_inactive.svg'),
  // ];

  // final List _iconsActive = [
  //   SvgPicture.asset(''),
  //   SvgPicture.asset(''),
  //   SvgPicture.asset(''),
  // ];

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.mainColor,
        titleSpacing: 0,
        title: Text('Mobile', style: AppFont.text20white),
        leadingWidth: 90,
        leading: Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset('assets/images/cicz-logo.svg')),
        actions: [
          SvgPicture.asset('assets/icons/Vector.svg'),
          const SizedBox(width: 20.0),
          SvgPicture.asset('assets/icons/question.svg'),
          const SizedBox(width: 20.0),
          IconButton(
              onPressed: () async {
                await LocalDataStorage.removeCurrentUser();
                approuter.go('/splash_screen');
              },
              icon: const Icon(Icons.remove_circle))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 185,
            width: double.infinity,
            child: CarouselSlider.builder(
              carouselController: con,
              itemCount: img.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      img[itemIndex],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    homeController.activeIndex = index;
                  });
                },
                autoPlayCurve: Curves.decelerate,
                autoPlay: true,
                viewportFraction: 1,
                pageSnapping: true,
                aspectRatio: 1.0,
                initialPage: 0,
                height: 175,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
              ),
            ),
          ),
          AnimatedSmoothIndicator(
            onDotClicked: (index) {
              debugPrint('0------$index');
              setState(() {
                con.animateToPage(index);
                homeController.activeIndex = index;
              });
            },
            activeIndex: homeController.activeIndex,
            count: img.length,
            effect: ExpandingDotsEffect(
              activeDotColor: AppColor.mainColor,
              dotColor: AppColor.grey4Color,
              dotHeight: 10,
              dotWidth: 10,
              expansionFactor: 3,
              radius: 5,
              spacing: 6.0,
            ),
          ),
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.all(20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                // color: AppColor.mainColor,
                borderRadius: BorderRadius.circular(10.0),
                gradient: RadialGradient(
                  colors: [AppColor.mainColor, AppColor.whiteColor],
                  radius: 0.5,
                ),
              ),
              child: GridView.builder(
                // shrinkWrap: true,
                primary: false,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  mainAxisExtent: 120,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      color: AppColor.whiteColor,
                      child: Image.asset('assets/icons/investment.png'),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            homeController.currentIndex = value;
            debugPrint(' = = = = = $value');
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: homeController.currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home_inactive.svg'),
            label: 'Home',
            activeIcon: SvgPicture.asset('assets/icons/home_active.svg'),
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/qr_scan_inactive.svg'),
              label: 'QR Scan'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/account_inactive.svg'),
            label: 'Account',
            activeIcon: SvgPicture.asset('assets/icons/account_active.svg'),
          ),
        ],
      ),
    );
  }

  // _bottonNavigationBar() {
  //   return Container(
  //     padding: const EdgeInsets.only(left: 20, right: 20),
  //     height: 66,
  //     width: double.infinity,
  //     decoration: BoxDecoration(
  //       borderRadius: const BorderRadius.only(
  //         topRight: Radius.circular(10.0),
  //         topLeft: Radius.circular(10.0),
  //       ),
  //       color: AppColor.whiteColor,
  //       boxShadow: [
  //         BoxShadow(
  //           offset: const Offset(0.3, 0.5),
  //           color: AppColor.greyColor,
  //           blurStyle: BlurStyle.outer,
  //         ),
  //       ],
  //     ),
  //     child: ListView.builder(
  //       itemBuilder: (context, index) {
  //         return GestureDetector(
  //           onTap: () {},
  //           child: Padding(
  //             padding: const EdgeInsets.all(5.0),
  //             child: AnimatedContainer(
  //               duration: const Duration(seconds: 1),
  //               curve: Curves.fastLinearToSlowEaseIn,
  //               // width: index == currentIndex,
  //               // ? displayWidth * .15
  //               // : displayWidth * .15,
  //               alignment: Alignment.center,
  //               child: Stack(
  //                 children: [
  //                   Row(
  //                     children: [
  //                       AnimatedContainer(
  //                         duration: const Duration(seconds: 1),
  //                         curve: Curves.fastLinearToSlowEaseIn,
  //                         width: 10,
  //                       ),
  //                       SvgPicture.asset('assets/icons/home_inactive.svg')
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }
}
