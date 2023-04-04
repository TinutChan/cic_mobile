import 'package:cic_mobile/auth/login_cic/controllers/login_controller.dart';
import 'package:cic_mobile/auth/login_cic/screens/input_phone_password.dart';
import 'package:cic_mobile/auth/register_cic/screen/create_password_screen.dart';
import 'package:cic_mobile/auth/register_cic/screen/enter_phone_number_screen.dart';
import 'package:cic_mobile/auth/register_cic/screen/set_pin_code_screen.dart';
import 'package:cic_mobile/modules/account/screens/account_screen.dart';
import 'package:cic_mobile/modules/bottom_navigationbar/botton_navbar.dart';
import 'package:cic_mobile/modules/bunos/screens/bunos_screen.dart';
import 'package:cic_mobile/modules/directory/screens/directory_screen.dart';
import 'package:cic_mobile/modules/event/screens/event_screen.dart';
import 'package:cic_mobile/modules/get_funding/screens/get_funding_screen.dart';
import 'package:cic_mobile/modules/investment/screens/investment_screen.dart';
import 'package:cic_mobile/modules/my_mvp/screen/my_mvp_screen.dart';
import 'package:cic_mobile/modules/privilege/screen/privilege.dart';
import 'package:cic_mobile/modules/profile/screens/create_company_screen.dart';
import 'package:cic_mobile/modules/profile/screens/edit_profile_information_screen.dart';
import 'package:cic_mobile/modules/profile/screens/update_company_screen.dart';
import 'package:cic_mobile/modules/splash_screen/splash_screen.dart';
import 'package:cic_mobile/modules/ut_trading/screens/ut_trading_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../auth/login_cic/screens/login_screen.dart';
import '../auth/register_cic/screen/opt_screen.dart';
import '../auth/register_cic/screen/register_screen.dart';
import '../modules/home/screens/home_screen.dart';
import '../modules/profile/screens/profile_screen.dart';
import '../modules/qr_scan/screens/qr_scan_screen.dart';

final loginController = Get.put(LoginController());

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
final GoRouter approuter = GoRouter(
  initialLocation: "/splash_screen",
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  routes: <RouteBase>[
    GoRoute(
        path: '/splash_screen',
        builder: (context, state) {
          return const SplashScreen();
        }),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return BottonNavBar(
          child: child,
        );
      },
      routes: [
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/home',
          name: 'Home',
          // builder: (context, state) {
          //   return const HomeScreen();
          // },
          pageBuilder: (context, state) => NoTransitionPage(
              name: state.name, key: state.pageKey, child: const HomeScreen()),
          routes: [
            GoRoute(
              path: 'investment',
              name: 'Investment',
              builder: (context, state) {
                return const InvestmentScreen();
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
              builder: (_, state) {
                return const DirectoryScreen();
              },
            ),
            GoRoute(
              path: 'privilege',
              name: 'privilege',
              parentNavigatorKey: _rootNavigatorKey,
              builder: (_, state) {
                return const Privilege();
              },
            ),
          ],
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/event',
          name: 'event',
          // builder: (context, state) {
          //   return const EventScreen();
          // },
          pageBuilder: (context, state) => NoTransitionPage(
              name: state.name, key: state.pageKey, child: const EventScreen()),
        ),
        GoRoute(
          path: '/my_mvp',
          builder: (context, state) {
            return const MyMvpScreen();
          },
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/profile',
          name: 'Profile',
          builder: (context, state) {
            return const ProfileScreen();
          },
          routes: [
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: 'editprofileinfomation',
              builder: (context, state) {
                return const EditProfileInformationScreen();
              },
            ),
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: 'setting',
              builder: (context, state) {
                return const AccountScreen();
              },
            ),
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: 'create/company',
              name: 'CreateComapany',
              builder: (context, state) {
                return const CreateCompanyScreen();
              },
            ),
            GoRoute(
              path: 'update/company',
              builder: (context, state) {
                return const UpdateProfileScreen();
              },
            )
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/qr_scan',
      name: 'QR_Scan',
      // builder: (context, state) {
      //   return const QRScanScreen();
      // },
      pageBuilder: (context, state) => NoTransitionPage(
          name: state.name, key: state.pageKey, child: const QRScanScreen()),
    ),
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
  ],
);
