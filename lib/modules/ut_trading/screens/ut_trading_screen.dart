import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/ut_trading/widget/custom_cic_equity_fund.dart';
import 'package:cic_mobile/modules/ut_trading/widget/custom_ut_trading_label.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class UTTradingScreen extends StatefulWidget {
  const UTTradingScreen({super.key});

  @override
  State<UTTradingScreen> createState() => _UTTradingScreenState();
}

class _UTTradingScreenState extends State<UTTradingScreen>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  final pageController = PageController();
  int groupValue = 0;
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
              body: NestedScrollView(
                controller: _scrollController,
                body: Container(
                  color: AppColor.whiteColor,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20.0),
                        width: double.infinity,
                        child: CupertinoSlidingSegmentedControl(
                          backgroundColor: AppColor.greyColor,
                          groupValue: groupValue,
                          children: const <int, Widget>{
                            0: Text('Index 1'),
                            1: Text('Index 2'),
                            2: Text('Index 3'),
                          },
                          onValueChanged: (int? value) {
                            groupValue = value!;
                            // pageController.animateToPage(groupValue,
                            //     duration: const Duration(milliseconds: 200),
                            //     curve: Curves.fastOutSlowIn);
                            setState(() {});
                            debugPrint('= = = $value');
                          },
                        ),
                      ),
                      Expanded(
                        child: PageView(
                          physics: const ClampingScrollPhysics(),
                          controller: pageController,
                          onPageChanged: (int? page) {
                            groupValue = page!;
                            setState(() {});
                          },
                          children: const [
                            Text('1'),
                            Text('2'),
                            Text('3'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                headerSliverBuilder: (context, _) {
                  return [
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 10.0,
                                bottom: 10.0,
                                left: 15.0,
                                right: 15.0),
                            margin: const EdgeInsets.all(20.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: AppColor.darkGrey),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xff26608D),
                                  Color(0xff12133F),
                                ],
                              ),
                              color: AppColor.mainColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const CustomUTTradingCard(),
                          ),
                          Container(
                            width: double.infinity,
                            // height: Get.height,x
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 10.0),
                                    width: 50.0,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color:
                                          AppColor.greyColor.withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    'Available Funds to Trade',
                                    style: theme()
                                        .textTheme
                                        .displayMedium
                                        ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: AppColor.greyColor1),
                                  ),
                                ),
                                const CustomCicEquityFundCard(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
