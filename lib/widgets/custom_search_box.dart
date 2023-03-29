import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBoxContainer extends StatelessWidget {
  const SearchBoxContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              height: 40.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppColor.greyColor.withOpacity(0.4),
              ),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/event_icon/search.svg'),
                  const SizedBox(width: 10.0),
                  Text(
                    'Search',
                    style: theme()
                        .textTheme
                        .displaySmall!
                        .copyWith(color: AppColor.darkGrey.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          SvgPicture.asset('assets/icons/event_icon/filter.svg'),
        ],
      ),
    );
  }
}
