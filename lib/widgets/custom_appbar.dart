import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:flutter/material.dart';

customAppBarWhiteBgColor({
  BuildContext? context,
  String? title,
  bool? isLeading,
  Widget? leading,
  List<Widget>? actions,
  double? elevetion,
  bool? centerTitle,
}) {
  return AppBar(
    title: Text(title ?? '', style: theme().textTheme.labelMedium),
    leading: isLeading == true
        ? IconButton(
            onPressed: () {
              Navigator.pop(context!);
            },
            icon: const Icon(Icons.arrow_back_ios_new))
        : leading,
    centerTitle: centerTitle,
    backgroundColor: AppColor.whiteColor,
    actions: actions,
    elevation: elevetion,
  );
}
