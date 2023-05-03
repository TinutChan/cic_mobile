import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomUTTradingCard extends StatelessWidget {
  const CustomUTTradingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/icons/ut_trading/calendar.svg'),
              const SizedBox(width: 13.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Monday',
                    style: theme().textTheme.labelMedium?.copyWith(
                          color: AppColor.whiteColor,
                        ),
                  ),
                  Text(
                    '22 Aug 2022',
                    style: theme().textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor.withOpacity(0.8),
                        ),
                  ),
                ],
              ),
              const SizedBox(width: 13.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColor.blueAccent,
                    ),
                    child: Text(
                      'Trading Open',
                      style: theme().textTheme.titleSmall?.copyWith(
                            color: AppColor.whiteColor,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '|',
                        style: theme().textTheme.bodySmall?.copyWith(
                              color: AppColor.greyColor.withOpacity(0.25),
                            ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '6:00am - 8:00pm',
                        style: theme().textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColor.whiteColor.withOpacity(0.8),
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Minimum',
                    style: theme().textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor.withOpacity(0.6),
                        ),
                  ),
                  Text(
                    '5.65',
                    style: theme().textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor,
                        ),
                  ),
                ],
              ),
              Container(height: 30, width: 1, color: AppColor.darkGrey),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Base',
                    style: theme().textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor.withOpacity(0.6),
                        ),
                  ),
                  Text(
                    '6.65',
                    style: theme().textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor,
                        ),
                  ),
                ],
              ),
              Container(
                height: 30,
                width: 1,
                color: AppColor.darkGrey.withOpacity(0.25),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Maximum',
                    style: theme().textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor.withOpacity(0.6),
                        ),
                  ),
                  Text(
                    '7.65',
                    style: theme().textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          height: 2,
          color: AppColor.grey4Color.withOpacity(0.25),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 8.0, bottom: 7.0),
          child: Text(
            'View Last Trading',
            style: theme().textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColor.whiteColor,
                ),
          ),
        ),
      ],
    );
  }
}
