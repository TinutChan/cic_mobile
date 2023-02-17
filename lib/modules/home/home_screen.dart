import 'package:carousel_slider/carousel_slider.dart';
import 'package:cic_mobile/auth/login_cic/controllers/login_controller.dart';
import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final loginController = Get.put(LoginController());
  List<String> img = [
    'assets/images/slide_show/slideshow1.png',
    'assets/images/slide_show/slideshow2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.mainColor,
        titleSpacing: 10,
        title: Text('Mobile', style: AppFont.text20white),
        leading: SvgPicture.asset('assets/images/cicz-logo.svg'),
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
            height: 200,
            width: double.infinity,
            child: CarouselSlider.builder(
              itemCount: img.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10.0),
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
                autoPlayCurve: Curves.decelerate,
                autoPlay: true,
                viewportFraction: 0.9,
                aspectRatio: 1.0,
                initialPage: 0,
                height: 175,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar()
    );
  }
}
