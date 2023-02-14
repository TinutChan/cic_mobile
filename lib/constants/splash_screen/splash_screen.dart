// import 'package:cic_mobile/constants/color_app/color_app.dart';
// import 'package:cic_mobile/constants/font_app/app_font.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import '../../widgets/custom_button.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     splash();
//     super.initState();
//   }

//   splash() async {
//     await Future.delayed(const Duration(seconds: 3), () {
//       context.push('/registerscreen');
//     });
//   }

//   final List<Color> colors = [
//     AppColor.blueColor0,
//     AppColor.blueColor40,
//     AppColor.blueColor99,
//     AppColor.blueColor100,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: colors,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(height: MediaQuery.of(context).size.height * 0.15),
//               Image.asset('assets/images/logo_cic.png'),
//               SizedBox(height: MediaQuery.of(context).size.height * 0.06),
//               Image.asset('assets/images/group.png'),
//               SizedBox(height: MediaQuery.of(context).size.height * 0.1),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text('Open your new account with',
//                     style: AppFont.dmSansRegula400),
//               ),
//               Text('CiC Mobile App', style: AppFont.texttheme18),
//               SizedBox(height: MediaQuery.of(context).size.height * 0.03),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: CustomButton(
//                   onClicked: () {
//                     context.push('/registerscreen');
//                   },
//                 ),
//               ),
//               const Spacer(),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 20.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     Text('Already have an account?'),
//                     Text('Login'),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
