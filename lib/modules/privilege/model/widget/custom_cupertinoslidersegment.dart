import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCupertinoSlidingSegment extends StatefulWidget {
  const CustomCupertinoSlidingSegment({super.key});

  @override
  State<CustomCupertinoSlidingSegment> createState() =>
      _CustomCupertinoSlidingSegmentState();
}

int? groupValue = 0;

class _CustomCupertinoSlidingSegmentState
    extends State<CustomCupertinoSlidingSegment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: double.infinity,
      child: CupertinoSlidingSegmentedControl<int>(
        backgroundColor: AppColor.grey4Color.withOpacity(0.4),
        thumbColor: CupertinoColors.white,
        padding: const EdgeInsets.all(4.0),
        groupValue: groupValue,
        children: <int, Widget>{
          0: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Service',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          1: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Info',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          2: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Photo',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        },
        onValueChanged: (int? value) {
          groupValue = value!;
          setState(() {});
        },
      ),
    );
  }
}
