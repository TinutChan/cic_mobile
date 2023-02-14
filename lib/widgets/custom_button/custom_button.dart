import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key, this.onTab});

  final VoidCallback? onTab;

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
              child: Image.asset('assets/icons/phone.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Phone Number'),
            )
          ],
        ),
      ),
    );
  }
}
