import 'package:cic_mobile/auth/register_cic/controller/enter_phone_number_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_opt_screen.dart';

class OptScreen extends StatelessWidget {
  OptScreen({super.key});

  final enterOtpController = Get.put(EnterPhoneNumberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomOptScreen(
        topContent: const Text('Verify Phone Number'),
        midContent: Text(
            'Code is send to +855${enterOtpController.phoneNumberController.value.text}'),
        bottContent:
            const Center(child: Text('Don’t receive code? Resend Code')),
      ),
    );
  }
}
