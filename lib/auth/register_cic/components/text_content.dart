import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  const TextContent({
    super.key,
    this.firsttextLabel,
    this.sectextLabel,
    this.textStyle1,
    this.textStyle2,
    this.text,
    this.textStyle3,
    this.onPressed,
  });

  final String? firsttextLabel;
  final String? sectextLabel;
  final String? text;
  final TextStyle? textStyle1;
  final TextStyle? textStyle2;
  final TextStyle? textStyle3;
  final VoidCallback? onPressed;

  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isChecked == false
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$firsttextLabel',
                  style: textStyle1,
                ),
              )
            : Container(),
        isChecked == false
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$sectextLabel',
                    style: textStyle2,
                  ),
                  isChecked == false
                      ? TextButton(
                          onPressed: onPressed,
                          child: Text(
                            '$text',
                            style: textStyle3,
                          ),
                        )
                      : Container(),
                ],
              )
            : Container(),
      ],
    );
  }
}
