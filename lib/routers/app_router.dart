import 'package:cic_mobile/auth/login_cic/controllers/login_controller.dart';
import 'package:cic_mobile/auth/login_cic/screens/input_phone_password.dart';
import 'package:cic_mobile/auth/register_cic/screen/create_password_screen.dart';
import 'package:cic_mobile/auth/register_cic/screen/enter_phone_number_screen.dart';
import 'package:cic_mobile/auth/register_cic/screen/set_pin_code_screen.dart';
import 'package:cic_mobile/modules/bottom_navigationbar/botton_navbar.dart';
import 'package:cic_mobile/modules/profile/screens/edit_profile_information_screen.dart';
import 'package:cic_mobile/modules/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../auth/login_cic/screens/login_screen.dart';
import '../auth/register_cic/screen/opt_screen.dart';
import '../auth/register_cic/screen/register_screen.dart';
import '../modules/account/screens/account_screen.dart';
import '../modules/bunos/screens/bunos_screen.dart';
import '../modules/directory/screens/directory_screen.dart';
import '../modules/get_funding/screens/get_funding_screen.dart';
import '../modules/home/screens/home_screen.dart';
import '../modules/investment/screens/investment_screen.dart';
import '../modules/profile/screens/profile_screen.dart';
import '../modules/qr_scan/screens/qr_scan_screen.dart';
import '../modules/report/screens/report_screen.dart';
import '../modules/ut_trading/screens/ut_trading_screen.dart';

final loginController = Get.put(LoginController());

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
final GoRouter approuter = GoRouter(
  initialLocation: "/splash_screen",
  routes: <RouteBase>[
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
      path: '/',
      builder: (context, state) {
        return const BottonNavBar();
      },
      routes: [
        GoRoute(
          path: 'homescreen',
          name: 'Home',
          builder: (context, state) {
            return const HomeScreen();
          },
          routes: [
            GoRoute(
              path: 'investment',
              name: 'Investment',
              builder: (context, state) {
                return InvestmentScreen();
              },
            ),
            GoRoute(
              path: 'bunos',
              name: 'Bunos',
              builder: (context, state) {
                return const BunosScreen();
              },
            ),
            GoRoute(
              path: 'get_funding',
              name: 'Get_Funding',
              builder: (context, state) {
                return const GetFundingScreen();
              },
            ),
            GoRoute(
              path: 'ut_trading',
              name: 'UT_Trading',
              builder: (context, state) {
                return const UTTradingScreen();
              },
            ),
            GoRoute(
              path: 'directory',
              name: 'Directory',
              builder: (context, state) {
                return const DirectoryScreen();
              },
            ),
            GoRoute(
              path: 'report',
              name: 'Report',
              builder: (context, state) {
                return const ReportScreen();
              },
            ),
          ],
        ),
        GoRoute(
          // parentNavigatorKey: _rootNavigatorKey,
          path: 'qr_scan',
          name: 'QR_Scan',
          builder: (context, state) {
            return const QRScanScreen();
          },
        ),
        GoRoute(
          path: 'account',
          name: 'Account',
          builder: (context, state) {
            return const AccountScreen();
          },
        )
      ],
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) {
        return const ProfileScreen();
      },
    ),
    GoRoute(
      path: '/editprofileinfomation',
      builder: (context, state) {
        return EditProfileInformationScreen();
      },
    ),
  ],
);
