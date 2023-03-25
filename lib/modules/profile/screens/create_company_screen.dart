import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/widgets/custom_appbar.dart';
import 'package:cic_mobile/widgets/custom_button/custom_two_row_button.dart';
import 'package:cic_mobile/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateCompanyScreen extends StatefulWidget {
  const CreateCompanyScreen({super.key});

  @override
  State<CreateCompanyScreen> createState() => _CreateCompanyScreenState();
}

class _CreateCompanyScreenState extends State<CreateCompanyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWhiteBgColor(
        elevetion: 0.7,
        title: 'Add Company',
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            Icons.close,
            color: AppColor.blackColor,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: EdgeInsets.zero,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: const [
                  CustomTextFieldWidget(),
                  CustomTextFieldWidget(),
                  CustomTextFieldWidget(),
                  CustomTextFieldWidget(),
                  CustomTextFieldWidget(),
                  CustomTextFieldWidget(),
                  CustomTextFieldWidget(),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 10.0,
            left: 20.0,
            right: 20.0,
            child: CustomTwoRowButton(),
          ),
        ],
      ),
    );
  }
}
