import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // overlay?.remove();
        // approuter.push('/my-mvp');
      },
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'My MVP',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: AppColor.blackColor,
                  ),
            ),
            const SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              'assets/icons/mvp_outline.svg',
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
