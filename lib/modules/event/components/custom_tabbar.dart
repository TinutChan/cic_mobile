import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen>
    with SingleTickerProviderStateMixin {
  final List<String> _tabs = <String>['Up Coming', 'Past Event'];
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
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 25.0),
              height: 35,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColor.mainColor.withOpacity(0.4),
                ),
                labelColor: AppColor.mainColor,
                unselectedLabelColor: Colors.black,
                controller: _controller,
                tabs: _tabs.map((String name) => Tab(text: name)).toList(),
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.only(left: 10.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppColor.greyColor.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  Container(
                    color: Colors.amber,
                    padding: EdgeInsets.zero,
                    width: double.infinity,
                    child: const Center(
                      child: Text('Tab View 1'),
                    ),
                  ),
                  const Center(
                    child: Text('Tab View 2'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
