import 'package:carousel_slider/carousel_slider.dart';
import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/app_font.dart';
import 'package:cic_mobile/modules/home/controller/home_controller.dart';
import 'package:cic_mobile/widgets/custom_home_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/home_model.dart';

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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
              dotHeight: 8.0,
              dotWidth: 8.0,
              expansionFactor: 3,
              radius: 5,
              spacing: 6.0,
            ),
          ),
          Expanded(
            flex: 13,
            child: Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    blurStyle: BlurStyle.normal,
                    offset: const Offset(0.3, 0.5),
                    color: AppColor.greyColor,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
                gradient: RadialGradient(
                  colors: [AppColor.mainColor, AppColor.whiteColor],
                  radius: 0.5,
                ),
              ),
              child: GridView.builder(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listImage.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    childAspectRatio: width / (height / 2.9)),
                itemBuilder: (context, index) {
                  return CustomCategoies(
                    imgaes: listImage[index]['imgaes'],
                    label: listImage[index]['label'],
                    onTapped: listImage[index]['onTapped'],
                  );
                },
              ),
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
