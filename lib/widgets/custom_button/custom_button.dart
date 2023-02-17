import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    this.onTab,
    this.images,
    this.title,
    this.style,
  });

  final VoidCallback? onTab;
  final String? images;
  final String? title;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: AppColor.whiteColor,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Image.asset('$images'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '$title',
                style: style,
              ),
            )
          ],
        ),
      ),
    );
  }
}
