import 'package:cic_mobile/constants/font_app/app_font.dart';
import 'package:flutter/material.dart';

import '../constants/color_app/color_app.dart';

class CustomCategoies extends StatelessWidget {
  const CustomCategoies({super.key, this.imgaes, this.label, this.onTapped});

  final String? imgaes;
  final String? label;
  final VoidCallback? onTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        color: AppColor.whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('$imgaes'),
            const SizedBox(height: 10.0),
            Text(
              '$label',
              style: AppFont.text14black,
            )
          ],
        ),
      ),
    );
  }
}
