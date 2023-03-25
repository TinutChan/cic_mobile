import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    textTheme: TextTheme(
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: AppColor.blackColor,
        fontFamily: 'DMSans',
      ),
      displayLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: AppColor.blackColor,
        fontFamily: 'DMSans',
      ),
      displayMedium: TextStyle(
        color: AppColor.blackColor,
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
      displaySmall: TextStyle(
        color: AppColor.blackColor,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        fontFamily: 'DMSans',
      ),
      //  titleLarge: TextStyle(
      //   fontWeight: FontWeight.w400,
      //   fontSize: 14,
      //   fontFamily: 'DMSans',
      // ),
      // titleMedium: TextStyle(
      //   fontWeight: FontWeight.w400,
      //   fontSize: 14,
      //   fontFamily: 'DMSans',
      // ),
      titleSmall: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        fontFamily: 'DMSans',
      ),
    ),
  );
}
