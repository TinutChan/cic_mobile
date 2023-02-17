import 'package:cic_mobile/auth/login_cic/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: loginController.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: const [Text('data')],
            ),
    );
  }
}
