import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';

class CustomMontlyAppBar extends StatelessWidget {
  const CustomMontlyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.mainColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
    );
  }
}
