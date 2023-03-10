import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/color_app/color_app.dart';
import '../modules/bottom_navigationbar/botton_navbar.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
    required this.margin,
    required this.viewportFraction,
    required this.padEnds,
  });
  final EdgeInsetsGeometry? margin;
  final double viewportFraction;
  final bool padEnds;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  List<String> img = [
    'assets/images/slide_show/slideshow1.png',
    'assets/images/slide_show/slideshow2.png',
    'assets/images/slide_show/slideshow1.png',
    'assets/images/slide_show/slideshow2.png',
  ];
  CarouselController con = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: con,
          itemCount: img.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
            width: double.infinity,
            margin: widget.margin,
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
            viewportFraction: widget.viewportFraction,
            padEnds: widget.padEnds,
            pageSnapping: true,
            aspectRatio: 1.0,
            initialPage: 0,
            height: 175,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
        ),
        const SizedBox(height: 10.0),
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
      ],
    );
  }
}
