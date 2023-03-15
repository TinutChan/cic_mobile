import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';

import '../../../constants/font_app/theme_data.dart';
import '../../../widgets/custom_slider.dart';

class CompanyProfileScreen extends StatelessWidget {
  const CompanyProfileScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTapped,
    required this.onTappedEdit,
    required this.desc,
    this.sildeImage,
  });

  final String? image;
  final String? title;
  final String? subtitle;
  final VoidCallback? onTapped;
  final VoidCallback? onTappedEdit;
  final String? desc;
  final String? sildeImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  image ??
                      'https://career.astra.co.id/static/media/image_not_available1.94c0c57d.png',
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title',
                    style: theme().textTheme.displayMedium!.copyWith(
                          color: AppColor.blackColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                  Text(
                    '$subtitle',
                    style: theme().textTheme.titleSmall!.copyWith(
                          color: AppColor.mainColor,
                        ),
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: onTapped,
                child: const Icon(Icons.more_horiz),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('About'),
              GestureDetector(
                  onTap: onTappedEdit, child: const Icon(Icons.edit))
            ],
          ),
          const SizedBox(height: 12),
          Text('$desc'),
          const SizedBox(height: 20),
          const CustomSlider(
            margin: EdgeInsets.only(right: 12.0),
            padEnds: false,
            viewportFraction: 0.9,
          ),
          const SizedBox(height: 15.0),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              minimumSize: const Size(double.infinity, 50),
              elevation: 0,
              backgroundColor: AppColor.mainColor.withOpacity(0.08),
            ),
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline),
            label: const Text('Add Company'),
          ),
        ],
      ),
    );
  }
}
