// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cic_mobile/auth/login_cic/controllers/login_controller.dart';
import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/app_font.dart';
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
  final loginController = Get.put(LoginController());
  CarouselController con = CarouselController();
  List<String> img = [
    'assets/images/slide_show/slideshow1.png',
    'assets/images/slide_show/slideshow2.png',
    'assets/images/slide_show/slideshow1.png',
    'assets/images/slide_show/slideshow2.png',
  ];

  int activeIndex = 0;

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
                    activeIndex = index;
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
                activeIndex = index;
              });
            },
            activeIndex: activeIndex,
            count: img.length,
            effect: ExpandingDotsEffect(
              activeDotColor: AppColor.mainColor,
              dotColor: AppColor.grey4Color,
              dotHeight: 10,
              dotWidth: 10,
              expansionFactor: 2,
              radius: 5,
              spacing: 6.0,
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar()
    );
  }
}
