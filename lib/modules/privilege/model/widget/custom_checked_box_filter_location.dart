import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckedBoxFilterLocation extends StatelessWidget {
  const CheckedBoxFilterLocation({
    super.key,
    this.locationLabel,
    this.onTap,
    this.isChecked = false,
  });

  final String? locationLabel;
  final VoidCallback? onTap;
  final bool? isChecked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: isChecked == false
            ? Row(
                children: [
                  SvgPicture.asset('assets/icons/privillege/check_box.svg'),
                  const SizedBox(width: 12.0),
                  Text(
                    '$locationLabel',
                    style: theme().textTheme.displaySmall,
                  ),
                ],
              )
            : Row(
                children: [
                  SvgPicture.asset(
                      'assets/icons/privillege/out_line_checked.svg'),
                  const SizedBox(width: 12.0),
                  Text(
                    '$locationLabel',
                    style: theme().textTheme.displaySmall,
                  ),
                ],
              ),
      ),
    );
  }
}
