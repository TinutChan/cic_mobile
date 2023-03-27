import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWhiteBgColor(
        title: 'Edit Company',
        centerTitle: true,
        elevetion: 0.7,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.close, color: AppColor.blackColor),
        ),
      ),
    );
  }
}
