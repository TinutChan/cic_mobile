import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/app_font.dart';
import 'package:cic_mobile/modules/home/controller/home_controller.dart';
import 'package:cic_mobile/widgets/custom_home_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_slider.dart';
import '../models/home_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.put(HomeController());
  @override
  void initState() {
    homeController.gethomeController();
    super.initState();
  }

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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.zero,
          height: height * 0.9,
          child: Column(
            children: [
              const CustomSlider(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                padEnds: true,
                viewportFraction: 1.0,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                margin:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
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
                    childAspectRatio: width / (height / 2.6),
                  ),
                  itemBuilder: (context, index) {
                    return CustomCategoies(
                      imgaes: listImage[index]['imgaes'],
                      label: listImage[index]['label'],
                      onTapped: listImage[index]['onTapped'],
                    );
                  },
                ),
              ),
              // Expanded(child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
