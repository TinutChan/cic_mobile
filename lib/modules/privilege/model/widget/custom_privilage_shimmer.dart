import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/utils/shimmer/custom_laoding_shimmer.dart';
import 'package:flutter/material.dart';

class PrivilageShimmer extends StatelessWidget {
  const PrivilageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: LoadingStyleShimmer(
              height: 150,
              width: double.infinity,
              borderRadius: BorderRadius.circular(10.0),
              color: AppColor.whiteColor,
            ),
          ),
          const SizedBox(height: 70.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LoadingStyleShimmer(
                width: 160,
                height: 80,
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              LoadingStyleShimmer(
                width: 160,
                height: 80,
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ],
          ),
          // LoadingStyleShimmer(
          //   width: double.infinity,
          //   height: 104,
          //   color: AppColor.whiteColor,
          // ),
          // LoadingStyleShimmer(
          //   width: 104,
          //   height: double.infinity,
          //   color: AppColor.whiteColor,
          // ),
        ],
      ),
    );
  }
}
