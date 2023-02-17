import 'package:cic_mobile/auth/register_cic/components/custom_screen_widget.dart';
import 'package:cic_mobile/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/color_app/color_app.dart';
import '../../../constants/font_app/app_font.dart';
import '../../../widgets/custom_button/custom_elevated_button.dart';
import '../components/backdrop_filter_image.dart';
import '../components/text_content.dart';
import '../controller/enter_phone_number_controller.dart';

class EnterPhoneNumberScreen extends StatefulWidget {
  const EnterPhoneNumberScreen({super.key});

  @override
  State<EnterPhoneNumberScreen> createState() => _EnterPhoneNumberScreenState();
}

class _EnterPhoneNumberScreenState extends State<EnterPhoneNumberScreen> {
  final enterPhoneNumberController = Get.put(EnterPhoneNumberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            CustomScreenWidget(
              widget: Image.asset('assets/images/logo_cic.png'),
            ),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                    TextContent(
                      firsttextLabel: 'Open your new account with',
                      textStyle1: AppFont.text18black,
                      sectextLabel: 'CiC Mobile App',
                      textStyle2: AppFont.text18blackBold,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20.0, top: 24),
                      child: CustomTextField(
                        onChanged: (value) {
                          enterPhoneNumberController.phone.value = value;
                        },
                        hintText: 'Phone Number',
                        textEditingController: enterPhoneNumberController
                            .phoneNumberController.value,
                        obscureText: false,
                        prefixIcon: Image.asset('assets/icons/phone_bold.png'),
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
                isDisbale:
                    enterPhoneNumberController.phone.value != '' ? false : true,
                onPressed: () {
                  enterPhoneNumberController.getEnterNumberController();
                },
                label: 'Get OTP',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
