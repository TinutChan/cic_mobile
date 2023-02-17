import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  const TextContent({
    super.key,
    this.firsttextLabel,
    this.sectextLabel,
    this.textStyle1,
    this.textStyle2,
    this.textButton,
    this.onPressed,
    this.text,
    this.textStyle3,
  });

  final String? firsttextLabel;
  final String? sectextLabel;
  final TextStyle? textStyle1;
  final TextStyle? textStyle2;
  final Widget? textButton;
  final VoidCallback? onPressed;
  final String? text;
  final TextStyle? textStyle3;

  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            firsttextLabel ?? '',
            style: textStyle1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              sectextLabel ?? '',
              style: textStyle2,
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(
                '$text',
                style: textStyle3,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
