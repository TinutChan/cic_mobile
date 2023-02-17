import 'package:cic_mobile/auth/register_cic/components/text_content.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_app/color_app.dart';
import '../../../constants/font_app/app_font.dart';
import '../../../routers/app_router.dart';
import '../../../widgets/custom_button/custom_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
            const Text('Welcome Back to CIC Mobile App'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  CustomButtonWidget(
                    images: 'assets/icons/phone.png',
                    title: 'Phone Number',
                    onTab: () {
                      approuter.push('/inputphonenumberpasswordscreen');
                    },
                  ),
                  const SizedBox(height: 14),
                  CustomButtonWidget(
                    images: 'assets/icons/pass.png',
                    title: 'Password',
                    onTab: () {
                      approuter.push('/');
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                height: 2,
                color: AppColor.whiteColor,
              ),
            ),
            TextContent(
              firsttextLabel: 'Login With Face ID',
              textStyle1: AppFont.text12white,
              sectextLabel: 'Don\'t have an account?',
              textStyle2: AppFont.text12white,
              text: 'Register',
              textStyle3: AppFont.text12white,
              onPressed: () {
                approuter.push('/registerscreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
