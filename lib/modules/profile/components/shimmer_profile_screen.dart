import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerProfileScreen extends StatelessWidget {
  const ShimmerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.4, 0.62],
              colors: [
                Color(0xff0F50A4),
                Color(0xffffffff),
              ],
            ),
          ),
        ),
        Positioned(
          top: 130,
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade400,
            highlightColor: Colors.grey.shade100,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.35),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: height / 6),
                  Container(height: 9, width: 150, color: Colors.white),
                  const SizedBox(height: 8),
                  Container(height: 9, width: 170, color: Colors.white),
                  const SizedBox(height: 8),
                  Container(height: 9, width: 200, color: Colors.white),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(4, (index) {
                      return Column(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: 20,
                            height: 9,
                            color: Colors.white,
                          ),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 117,
          right: 117,
          top: 80,
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade400,
            highlightColor: Colors.grey.shade100,
            child: Container(
              height: height / 4,
              width: width,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                ),
              ),
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: width,
                height: height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 3,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
