import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CompanyProfileSimmer extends StatelessWidget {
  const CompanyProfileSimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 30.0,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 10, width: double.infinity, color: Colors.white),
                  Container(
                      height: 10, width: double.infinity, color: Colors.white)
                ],
              ),
              const Spacer(),
              Container(
                height: 10,
                width: 40,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 10,
                width: 40,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(height: 12),
          Container(
            height: 10,
            width: double.infinity,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
