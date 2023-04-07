import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/routers/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterSearchPrivilage extends StatelessWidget {
  const FilterSearchPrivilage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            debugPrint('------------is push screnn ');
            approuter.push('/home/privilege/see-all-categories/filter-shop');
          },
          child: Container(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, bottom: 4.0, top: 4.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColor.mainColor.withOpacity(0.2)),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/privillege/filter.svg'),
                  Text(
                    'Filter',
                    style: theme().textTheme.displaySmall!.copyWith(
                          color: AppColor.mainColor,
                        ),
                  ),
                ],
              )),
        ),
        Container(
          margin: const EdgeInsets.only(left: 6.0),
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColor.mainColor.withOpacity(0.2)),
          child: Icon(
            Icons.search,
            color: AppColor.mainColor,
          ),
        ),
      ],
    );
  }
}
