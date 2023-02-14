import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'backdrop_filter_image.dart';
import '../controller/enter_phone_number_controller.dart';
import 'custom_screen_widget.dart';

class CustomOptScreen extends StatelessWidget {
  CustomOptScreen({
    super.key,
    this.topContent,
    this.midContent,
    this.bottContent,
  });

  final Widget? topContent;
  final Widget? midContent;
  final Widget? bottContent;

  final getOtpController = Get.put(EnterPhoneNumberController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          left: 0,
          right: 0,
          top: 110,
          child: CustomScreenWidget(),
        ),
        BackDropFiltterImage(
          sigmaX: 35,
          sigmaY: 35,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OTPTextField(
                  // controller: getOtpController.verificationCodeController.value,
                  outlineBorderRadius: 10,
                  length: 4,
                  width: double.infinity,
                  fieldWidth: 30,
                  style: const TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,

                  onCompleted: (pin) {
                    getOtpController.getOptController(pin: pin);
                  },
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: Image.asset('assets/images/logo_cic.png'),
        ),
        Positioned(
          top: 220,
          left: 0,
          right: 0,
          child: Center(
            child: Column(
              children: [
                topContent ?? Container(),
                const SizedBox(
                  height: 8.0,
                ),
                midContent ?? Container(),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: bottContent ?? Container(),
        ),
      ],
    );
  }
}
