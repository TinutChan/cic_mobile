import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        fontFamily: 'DMSans',
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
      displaySmall: TextStyle(
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
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        fontFamily: 'DMSans',
      ),
    ),
  );
}
