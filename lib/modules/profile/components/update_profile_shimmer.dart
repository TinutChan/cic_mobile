import 'package:cic_mobile/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constants/color_app/color_app.dart';

class UpdateProfileShimmer extends StatelessWidget {
  const UpdateProfileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            minRadius: 40.0,
            backgroundColor: AppColor.whiteColor,
          ),
          CustomTextField(obscureText: false),
          CustomTextField(obscureText: false),
          CustomTextField(obscureText: false),
          CustomTextField(obscureText: false),
          CustomTextField(obscureText: false),
          CustomTextField(obscureText: false),
          CustomTextField(obscureText: false),
          CustomTextField(obscureText: false),
        ],
      ),
    );
  }
}
