import 'package:cic_mobile/auth/register_cic/controller/enter_phone_number_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../constants/color_app/color_app.dart';
import '../../../constants/font_app/app_font.dart';
import '../../../widgets/custom_button/custom_elevated_button.dart';
import '../../../widgets/custom_textfield.dart';
import '../components/custom_screen_widget.dart';
import '../components/backdrop_filter_image.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final createPasswordController = Get.put(EnterPhoneNumberController());
  bool isVisible = false;

  bool isPasswordEightCharacters = false;
  bool hasPasswordOneNumber = false;
  bool isUpperCaseAndLowercase = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');
    final RegExp caseRegex = RegExp(r"(?=.*[a-z])(?=.*[A-Z])\w+");

    setState(() {
      if (password.length < 8) {
        isPasswordEightCharacters = false;
      } else {
        isPasswordEightCharacters = true;
      }

      if (caseRegex.hasMatch(password)) {
        isUpperCaseAndLowercase = true;
      } else {
        isUpperCaseAndLowercase = false;
      }

      if (numericRegex.hasMatch(password)) {
        hasPasswordOneNumber = true;
      } else {
        hasPasswordOneNumber = false;
      }
    });
  }

  final passwordController = Get.put(EnterPhoneNumberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomScreenWidget(),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColor.whiteColor.withOpacity(0.7),
          ),
          BackDropFiltterImage(
            sigmaX: 15,
            sigmaY: 15,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.14),
                  Center(child: Image.asset('assets/images/logo_cic.png')),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Set Password',
                        style: AppFont.text16mainColor,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Please create a strong password',
                      style: AppFont.text14darkColor,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20.0, top: 24),
                    child: CustomTextField(
                      onChanged: (password) {
                        onPasswordChanged(password);
                      },
                      prefixIcon:
                          Image.asset('assets/icons/Password.png', scale: 1.5),
                      hintText: 'password',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Icon(
                          Icons.visibility,
                          color: AppColor.blackColor,
                        ),
                      ),
                      obscureText: !isVisible,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your password must have:',
                          style: AppFont.text12black,
                        ),
                        const SizedBox(height: 6),
                        isPasswordEightCharacters == false
                            ? Row(
                                children: [
                                  SvgPicture.asset('assets/icons/circle.svg'),
                                  const SizedBox(width: 8),
                                  Text('8 or more characters',
                                      style: AppFont.text12black),
                                ],
                              )
                            : Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/circle-checked-selected.svg'),
                                  const SizedBox(width: 8),
                                  Text('8 or more characters',
                                      style: AppFont.text12green),
                                ],
                              ),
                        const SizedBox(height: 6),
                        isUpperCaseAndLowercase == false
                            ? Row(
                                children: [
                                  SvgPicture.asset('assets/icons/circle.svg'),
                                  const SizedBox(width: 8),
                                  Text('upper & lowercase letter',
                                      style: AppFont.text12black),
                                ],
                              )
                            : Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/circle-checked-selected.svg'),
                                  const SizedBox(width: 8),
                                  Text('upper & lowercase letter',
                                      style: AppFont.text12green),
                                ],
                              ),
                        const SizedBox(height: 6),
                        hasPasswordOneNumber == false
                            ? Row(
                                children: [
                                  SvgPicture.asset('assets/icons/circle.svg'),
                                  const SizedBox(width: 8),
                                  Text(
                                    'at least one number',
                                    style: AppFont.text12black,
                                  ),
                                ],
                              )
                            : Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/circle-checked-selected.svg'),
                                  const SizedBox(width: 8),
                                  Text(
                                    'at least one number',
                                    style: AppFont.text12green,
                                  ),
                                ],
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: CustomButtonElevatedButton(
              isDisbale: isPasswordEightCharacters &&
                      hasPasswordOneNumber &&
                      isUpperCaseAndLowercase
                  ? true
                  : false,
              onPressed: () {
                createPasswordController.getSetPasswordController();
              },
              label: 'Continue',
            ),
          ),
        ],
      ),
    );
  }
}
