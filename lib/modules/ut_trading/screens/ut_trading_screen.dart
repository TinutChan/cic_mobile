import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/get_utils.dart';

class UTTradingScreen extends StatelessWidget {
  const UTTradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: Stack(
          children: [
            SizedBox(
              width: context.width,
              height: context.height,
              child: Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(
                  'assets/icons/ut_trading/background_appbar.svg',
                  width: context.width,
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: customAppBar(
                backgroundColor: Colors.transparent,
                context: context,
                title: 'UT Trading',
                centerTitle: false,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: SvgPicture.asset(
                      'assets/icons/ut_trading/help.svg',
                    ),
                  ),
                ],
              ),
              body: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [SvgPicture.asset('assetName')],
                        ),
                        Text('2'),
                        Text('3'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
