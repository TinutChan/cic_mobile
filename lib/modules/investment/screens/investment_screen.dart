import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/font_app/app_font.dart';

class InvestmentScreen extends StatelessWidget {
  InvestmentScreen({super.key});

  final List<Color> colors = [
    const Color(0xff0F50A4).withOpacity(1),
    const Color(0xff0F50A4).withOpacity(0.8),
    const Color(0xff2A76D9).withOpacity(0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.mainColor,
          titleSpacing: 0,
          title: Text('MY Investment', style: AppFont.text20white),
          leadingWidth: 110,
          leading: Row(
            children: [
              IconButton(
                onPressed: () {
                  context.go('/home');
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
              SvgPicture.asset('assets/images/cicz-logo.svg'),
            ],
          ),
        ),
        body: Column(
          children: const [],
        ));
  }
}
