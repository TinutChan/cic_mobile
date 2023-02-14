import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routers/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
