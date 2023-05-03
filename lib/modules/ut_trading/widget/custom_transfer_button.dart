import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomRecieveTranserButton extends StatelessWidget {
  const CustomRecieveTranserButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: 25.0, right: 25.0, bottom: 12.0, top: 12.0),
      decoration: BoxDecoration(
        color: AppColor.greenColor14,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/ut_trading/recieve_icon.svg'),
          const SizedBox(width: 10.0),
          const Text('Buy More'),
        ],
      ),
    );
  }
}
