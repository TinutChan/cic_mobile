import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:flutter/material.dart';

customAppBarWhiteBgColor({
  String? title,
  Widget? leading,
  List<Widget>? actions,
  double? elevetion,
  bool? centerTitle,
}) {
  return AppBar(
    title: Text(title ?? '', style: theme().textTheme.labelMedium),
    leading: leading,
    centerTitle: centerTitle,
    backgroundColor: AppColor.whiteColor,
    actions: actions,
    elevation: elevetion,
  );
}
