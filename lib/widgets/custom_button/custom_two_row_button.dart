import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:flutter/material.dart';

class CustomTwoRowButton extends StatelessWidget {
  const CustomTwoRowButton({super.key, this.onPressedCancel});

  final bool? isChecked = false;
  final VoidCallback? onPressedCancel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: AppColor.whiteColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColor.mainColor),
                borderRadius: BorderRadius.circular(10.0),
              ),
              minimumSize: const Size(double.infinity, 50),
            ),
            onPressed: () {},
            child: Text(
              'Cancel',
              style: theme().textTheme.displayMedium,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: AppColor.mainColor,
            ),
            child: Text(
              'Done',
              style: theme()
                  .textTheme
                  .displayMedium!
                  .copyWith(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
