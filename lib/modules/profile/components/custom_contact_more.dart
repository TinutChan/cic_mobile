import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactMore extends StatelessWidget {
  const ContactMore({
    super.key,
    required this.icons,
    required this.title,
    this.colors,
  });

  final String? icons;
  final String? title;
  final ColorFilter? colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          '$icons',
          colorFilter: colors,
        ),
        Text('$title'),
      ],
    );
  }
}
