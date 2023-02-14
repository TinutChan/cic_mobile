import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  const TextContent(
      {super.key,
      this.firsttextLabel,
      this.sectextLabel,
      this.textStyle1,
      this.textStyle2});

  final String? firsttextLabel;
  final String? sectextLabel;
  final TextStyle? textStyle1;
  final TextStyle? textStyle2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$firsttextLabel',
            style: textStyle1,
          ),
        ),
        Text(
          '$sectextLabel',
          style: textStyle2,
        ),
      ],
    );
  }
}
