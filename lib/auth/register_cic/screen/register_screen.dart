import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/app_font.dart';
import 'package:cic_mobile/routers/app_router.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_button/custom_button.dart';
import '../components/text_content.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final List<Color> colors = [
    AppColor.blueColor0.withOpacity(0),
    AppColor.blueColor40.withOpacity(0.8),
    AppColor.blueColor99.withOpacity(1),
    AppColor.blueColor100.withOpacity(1),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colors,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: height * 0.07),
            Image.asset('assets/images/logo_cic.png'),
            Image.asset('assets/images/group.png'),
            SizedBox(height: height * 0.01),
            TextContent(
              firsttextLabel: 'Open your new account with',
              textStyle1: AppFont.text18white,
              sectextLabel: 'CiC Mobile App',
              textStyle2: AppFont.text18whiteBold,
              // text: 'nnnnn',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButtonWidget(
                images: 'assets/icons/phone.png',
                title: 'Phone Number',
                style: AppFont.text14white,
                onTab: () {
                  approuter.push('/enterphonenuberscreen');
                },
              ),
            ),
            SizedBox(height: height * 0.05),
            const Text('Already have an account? Login'),
          ],
        ),
      ),
    );
  }
}
