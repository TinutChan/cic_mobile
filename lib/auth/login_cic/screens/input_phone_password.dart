import 'package:cic_mobile/auth/login_cic/controllers/login_controller.dart';
import 'package:cic_mobile/auth/register_cic/components/backdrop_filter_image.dart';
import 'package:cic_mobile/constants/font_app/app_font.dart';
import 'package:cic_mobile/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/color_app/color_app.dart';
import '../../../widgets/custom_button/custom_elevated_button.dart';
import '../../register_cic/components/custom_screen_widget.dart';

// ignore: must_be_immutable
class InputPhoneNumberPasswordScreen extends StatelessWidget {
  InputPhoneNumberPasswordScreen({super.key});

  final loginController = Get.put(LoginController());
  bool isEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                CustomScreenWidget(
                    widget: Image.asset('assets/images/logo_cic.png')),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: AppColor.whiteColor.withOpacity(0.7),
                ),
                BackDropFiltterImage(
                  sigmaX: 15,
                  sigmaY: 15,
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome back to',
                            style: AppFont.text18black,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            'CiC Mobile App ',
                            style: AppFont.text18blackBold,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 24),
                        child: CustomTextField(
                          onChanged: (value) {
                            loginController.phone.value = value;
                            debugPrint('Phone: ${loginController.phone.value}');
                          },
                          textEditingController:
                              loginController.phoneNumberController.value,
                          hintText: 'Phone Number',
                          obscureText: false,
                          prefixIcon:
                              Image.asset('assets/icons/phone_bold.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 14),
                        child: CustomTextField(
                          onChanged: (value) {
                            loginController.pass.value = value;
                            debugPrint('Pass: ${loginController.pass.value}');
                          },
                          textEditingController:
                              loginController.passwordController.value,
                          hintText: 'Password',
                          obscureText: true,
                          prefixIcon: Image.asset('assets/icons/Password.png',
                              scale: 1.5),
                          suffixIcon: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot?',
                              style: AppFont.text12darkGreyColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  right: 20,
                  child: CustomButtonElevatedButton(
                    isDisbale: loginController.phone.value != '' &&
                            loginController.pass.value != ''
                        ? false
                        : true,
                    onPressed: () async {
                      await loginController.getLoginControler();
                    },
                    label: 'Login',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
