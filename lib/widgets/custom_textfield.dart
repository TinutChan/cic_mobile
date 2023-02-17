import 'package:flutter/material.dart';

import '../constants/color_app/color_app.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
 CustomTextField({
    Key? key,
    this.labelText,
    required this.hintText,
    this.focusNode,
    required this.obscureText,
    this.textEditingController,
    this.onEditingComplete,
    this.onChanged,
    this.scrollPadding,
    this.suffixIcon,
    this.borderColor,
    this.readOnly,
    this.onTap,
    this.validator,
    this.initialText,
    this.prefixIcon,
  }) : super(key: key);

  Color focusBorderColor = Colors.black45;
  Color labelColor = const Color(0xff0A0B09);
  Color textColor = Colors.black;
  int maxLines = 1;
  bool isRequired = false;
  TextInputType textInputType = TextInputType.text;
  final String? labelText;
  final String? hintText;
  final FocusNode? focusNode;
  final bool obscureText;
  final TextEditingController? textEditingController;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onChanged;
  final EdgeInsets? scrollPadding;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? borderColor;
  final bool? readOnly;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? validator;
  int? maxLength = 40;
  final String? initialText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      onTap: onTap,
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: AppColor.mainColor),
        ),
        contentPadding: const EdgeInsets.all(15.0),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
      ),
    );
  }
}
