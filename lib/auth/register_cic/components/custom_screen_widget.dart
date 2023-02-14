import 'package:flutter/material.dart';

class CustomScreenWidget extends StatelessWidget {
  const CustomScreenWidget({super.key, this.widget});

  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(height: height * 0.15),
              widget ?? Container(),
              SizedBox(height: height * 0.15),
              Image.asset('assets/images/group.png'),
            ],
          ),
        ],
      ),
    );
  }
}
