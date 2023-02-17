import 'package:cic_mobile/auth/login_cic/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routers/app_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final loginController = Get.put(LoginController());
  @override
  void initState() {
    loginController.functionFetchToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      routerDelegate: approuter.routerDelegate,
      routeInformationParser: approuter.routeInformationParser,
      routeInformationProvider: approuter.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
