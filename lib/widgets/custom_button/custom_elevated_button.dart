import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/app_font.dart';
import 'package:flutter/material.dart';

class CustomButtonElevatedButton extends StatelessWidget {
  const CustomButtonElevatedButton({
    super.key,
    required this.onPressed,
    this.isDisbale = false,
    required this.label,
  });

  final VoidCallback? onPressed;
  final bool? isDisbale;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: Colors.white.withOpacity(0),
        padding: const EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: isDisbale == false
            ? AppColor.greyColor.withOpacity(0.4)
            : AppColor.mainColor,
      ),
      child: Text('$label', style: AppFont.text16white),
    );
  }
}
