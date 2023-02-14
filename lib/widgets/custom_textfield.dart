import 'package:flutter/material.dart';

import '../constants/color_app/color_app.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.enableBorder,
    this.focusedBorder,
    this.edgeInsetsGeometry,
    this.child,
    this.hintText,
    this.controller,
    this.onChanged,
  });

  final InputBorder? enableBorder;
  final InputBorder? focusedBorder;
  final EdgeInsetsGeometry? edgeInsetsGeometry;
  final Widget? child;
  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: AppColor.mainColor),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        hintText: 'Phone Number',
        prefix: const Icon(Icons.vpn_key_sharp),
      ),
      onChanged: onChanged,
    );
  }
}
