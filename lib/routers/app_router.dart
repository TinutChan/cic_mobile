import 'package:cic_mobile/auth/login_cic/controllers/login_controller.dart';
import 'package:cic_mobile/auth/login_cic/screens/input_phone_password.dart';
import 'package:cic_mobile/auth/register_cic/screen/create_password_screen.dart';
import 'package:cic_mobile/auth/register_cic/screen/enter_phone_number_screen.dart';
import 'package:cic_mobile/auth/register_cic/screen/set_pin_code_screen.dart';
import 'package:cic_mobile/modules/account/screens/account_screen.dart';
import 'package:cic_mobile/modules/home/screens/home_screen.dart';
import 'package:cic_mobile/modules/qr_scan/screens/qr_scan_screen.dart';
import 'package:cic_mobile/modules/splash_screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../auth/login_cic/screens/login_screen.dart';
import '../auth/register_cic/screen/opt_screen.dart';
import '../auth/register_cic/screen/register_screen.dart';

final loginController = Get.put(LoginController());

final GoRouter approuter = GoRouter(
  initialLocation: "/splash_screen",
  routes: <RouteBase>[
    ShellRoute(
      routes: [
        GoRoute(
          path: '/qr_scan',
          builder: (context, state) {
            return const QRScanScreen();
          },
        ),
        GoRoute(
          path: '/account',
          builder: (context, state) {
            return const AccountScreen();
          },
        ),
      ],
    ),
    GoRoute(
        path: '/splash_screen',
        builder: (context, state) {
          return const SplashScreen();
        }),
    GoRoute(
      path: '/login',
      builder: (context, state) {
        return const LoginScreen();
      },
      // redirect: (context, state) {
      //   if (loginController.token.value != '') {
      //     return '/';
      //   }
      //   return null;
      // }
    ),
    GoRoute(
      path: '/registerscreen',
      builder: (context, state) {
        return RegisterScreen();
      },
    ),
    GoRoute(
      path: '/otpscreen',
      builder: (context, state) {
        return OptScreen();
      },
    ),
    GoRoute(
      path: '/enterphonenuberscreen',
      builder: (context, state) {
        return const EnterPhoneNumberScreen();
      },
    ),
    GoRoute(
      path: '/setpassword',
      builder: (context, state) {
        return const CreatePasswordScreen();
      },
    ),
    GoRoute(
      path: '/setpincodescreen',
      builder: (context, state) {
        return const SetPinCodeScreen();
      },
    ),
    GoRoute(
      path: '/inputphonenumberpasswordscreen',
      builder: (context, state) {
        return InputPhoneNumberPasswordScreen();
      },
    ),
    GoRoute(
      path: '/homescreen',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
  ],
);
