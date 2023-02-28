import 'package:cic_mobile/routers/app_router.dart';
import 'package:cic_mobile/utils/helper/local_storage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () async {
      var token = await LocalDataStorage.getCurrentUser();
      if (token != '') {
        approuter.go('/');
      } else {
        approuter.go('/login');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("Splash Screen"),
    ));
  }
}
