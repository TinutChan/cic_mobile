import 'package:cic_mobile/auth/login_cic/controllers/login_controller.dart';
import 'package:cic_mobile/utils/helper/local_storage.dart';
import 'package:cic_mobile/utils/helper/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/font_app/theme_data.dart';
import 'routers/app_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await LocalStorage.init();
  await LocalDataStorage.getCurrentUser();
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
      theme: theme(),
    );
  }
}
