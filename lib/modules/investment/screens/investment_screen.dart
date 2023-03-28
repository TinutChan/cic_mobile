import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:flutter/material.dart';

class InvestmentScreen extends StatefulWidget {
  const InvestmentScreen({super.key});

  @override
  State<InvestmentScreen> createState() => _InvestmentScreenState();
}

class _InvestmentScreenState extends State<InvestmentScreen>
    with SingleTickerProviderStateMixin {
  final List<String> _tabs = <String>['Personal Profile', 'Company Profile '];
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: customAppWithBlueBg(
          centerTitle: false,
          context: context,
          title: 'My Investment',
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 135,
                  width: double.infinity,
                  color: AppColor.mainColor,
                ),
                // Container(
                //   width: 10,
                //   height: 10,
                //   color: Colors.amber,
                // )

                Positioned(
                  top: 7.0,
                  left: 10.0,
                  right: 10.0,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: <Widget>[
                        TabBar(
                            isScrollable: true,
                            labelColor: Colors.black,
                            indicatorColor: Colors.blue,
                            controller: _controller,
                            tabs: _tabs
                                .map((String name) => Tab(text: name))
                                .toList()),
                        Expanded(
                          child: TabBarView(
                            controller: _controller,
                            children: const <Widget>[
                              Center(
                                child: Text('Tab View 1'),
                              ),
                              Center(
                                child: Text('Tab View 2'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
