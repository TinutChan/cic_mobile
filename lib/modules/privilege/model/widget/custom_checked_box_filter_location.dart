import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/privilege/controller/privilege_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CheckedBoxFilterLocation extends StatelessWidget {
  const CheckedBoxFilterLocation({
    super.key,
    this.locationLabel,
    this.onSelected,
  });

  final String? locationLabel;
  final int? onSelected;
  final int? index = 0;

  @override
  Widget build(BuildContext context) {
    final privilageController = Get.put(PrivilegeController());
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          privilageController.locationSelected.value = onSelected!;
          debugPrint('e: ${privilageController.locationSelected.value}');
        },
        child: privilageController.locationSelected.value == 0
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
