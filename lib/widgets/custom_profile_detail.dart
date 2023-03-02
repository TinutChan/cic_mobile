import 'package:flutter/material.dart';

import '../constants/color_app/color_app.dart';

class CustomProfileDetail extends StatelessWidget {
  const CustomProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    final width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xff0F50A4).withOpacity(1),
                const Color(0xff0F50A4).withOpacity(1),
                const Color(0xffffffff).withOpacity(0.8),
                const Color(0xffffffff)
              ],
            ),
          ),
        ),
        Positioned(
          top: 150,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: height / 6),
                const Text('Name: Tinut'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.verified_user_outlined, size: 18),
                    Text('Marketing Manager'),
                  ],
                ),
                const Text('Cambodia Investors Corporation'),
                Row(
                  children: [
                    Column(
                      children: const [CircleAvatar(), Text('Call')],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 117,
          right: 117,
          top: 100,
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
                  color: AppColor.mainColor,
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
                    color: AppColor.mainColor,
                  ),
                ),
                child: Image.network(
                  '',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
