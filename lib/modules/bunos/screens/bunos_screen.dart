import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BunosScreen extends StatelessWidget {
  const BunosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.mainColor,
      appBar: customAppBar(
        context: context,
        backgroundColor: Colors.transparent,
        title: 'Wallet',
        centerTitle: false,
      ),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                stretchTriggerOffset: 200,
                toolbarHeight: 10,
                collapsedHeight: 12,
                stretch: true,
                expandedHeight: MediaQuery.of(context).size.height * 0.3,
                floating: true,
                pinned: false,
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                  collapseMode: CollapseMode.parallax,
                  background: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        color: const Color(0xff0F50A4),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        width: double.infinity,
                        child: SvgPicture.asset(
                            'assets/images/bunos/ellpblue.svg'),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: SvgPicture.asset(
                            'assets/images/bunos/elipwhite.svg'),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: Column(
                          children: [
                            const Text('Available Balance'),
                            const Text('300'),
                            const Text('As of 05 January 2022'),
                            Container(
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                  color: AppColor.whiteColor,
                                  borderRadius: BorderRadius.circular(16.0)),
                              child: SvgPicture.asset(
                                  'assets/icons/bunos/deposite.svg'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
