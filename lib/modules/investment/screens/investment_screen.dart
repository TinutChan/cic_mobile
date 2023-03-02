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
                context.go('/');
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            SvgPicture.asset('assets/images/cicz-logo.svg'),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 132,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 0,
                      color: Colors.white.withOpacity(0.5),
                      spreadRadius: 10,
                      offset: const Offset(0.3, 0.5),
                    ),
                  ]),
              height: 132,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
