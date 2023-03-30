import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key, this.onTap, this.title, this.actionIcon, this.leadingIcon});

  final String? title;
  final VoidCallback? onTap;
  final String? leadingIcon;
  final String? actionIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, //! overlay.remove
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              '$leadingIcon',
              height: 16,
              colorFilter: ColorFilter.mode(
                AppColor.mainColor,
                BlendMode.srcIn,
              ),
            ),
            Text(
              '$title',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: AppColor.blackColor,
                  ),
            ),
            const SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              '$actionIcon',
              height: 16,
              colorFilter: ColorFilter.mode(
                AppColor.mainColor,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
