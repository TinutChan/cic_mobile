import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

customAppBar({
  required BuildContext context,
  String? title,
  bool? centerTitle,
  List<Widget>? actions,
  Color? backgroundColor,
  bool? isLogo = true,
  bool? isLeading = true,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: backgroundColor ?? AppColor.mainColor,
    titleSpacing: 0,
    title: Text(title ?? '', style: AppFont.text20white),
    leadingWidth: 110,
    centerTitle: centerTitle,
    leading: isLeading == true
        ? Row(
            children: [
              IconButton(
                onPressed: () {
                  // context.go('/home');
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
              isLogo == true
                  ? SvgPicture.asset('assets/images/cicz-logo.svg',
                      colorFilter:
                          const ColorFilter.mode(Colors.red, BlendMode.dstIn))
                  : const SizedBox(),
            ],
          )
        : const SizedBox(),
    actions: actions,
  );
}
