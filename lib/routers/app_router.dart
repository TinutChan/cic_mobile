import 'package:cic_mobile/auth/register_cic/screen/create_password_screen.dart';
import 'package:cic_mobile/auth/register_cic/screen/enter_phone_number_screen.dart';
import 'package:cic_mobile/auth/register_cic/screen/set_pin_code_screen.dart';
import 'package:go_router/go_router.dart';

import '../auth/register_cic/screen/opt_screen.dart';
import '../auth/register_cic/screen/register_screen.dart';

final GoRouter approuter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
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
        }),
  ],
);
