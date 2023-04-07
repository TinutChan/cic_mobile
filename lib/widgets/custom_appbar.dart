import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:flutter/material.dart';

customAppBarWhiteBgColor({
  required BuildContext context,
  String? title,
  bool? isLeading = true,
  Widget? leading,
  List<Widget>? actions,
  double? elevetion = 0,
  bool? centerTitle,
}) {
  return AppBar(
    title: Text(title ?? '', style: theme().textTheme.labelMedium),
    leading: isLeading == true
        ? IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: AppColor.blackColor,
            ),
          )
        : leading,
    centerTitle: centerTitle,
    backgroundColor: AppColor.whiteColor,
    actions: actions,
    elevation: elevetion,
  );
}
