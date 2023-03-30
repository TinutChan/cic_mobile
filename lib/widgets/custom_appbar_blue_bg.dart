import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

customAppBar({
  required BuildContext context,
  String? title,
  bool? centerTitle,
  List<Widget>? actions,
  Color? backgroundColor,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: backgroundColor ?? AppColor.mainColor,
    titleSpacing: 0,
    title: Text(title ?? '', style: AppFont.text20white),
    leadingWidth: 110,
    centerTitle: centerTitle,
    leading: Row(
      children: [
        IconButton(
          onPressed: () {
            context.go('/home');
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        SvgPicture.asset('assets/images/cicz-logo.svg',
            colorFilter: const ColorFilter.mode(Colors.red, BlendMode.dstIn)),
      ],
    ),
    actions: actions,
  );
}
