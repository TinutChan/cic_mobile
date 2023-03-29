import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/widgets/custom_search_box.dart';
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
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
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
          const SizedBox(height: 19.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SearchBoxContainer(),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.zero,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 20.0),
                        child: Text('Featured Events',
                            style: theme().textTheme.displayMedium),
                      ),
                      Container(
                        width: double.infinity,
                        height: 237.0,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 20.0, bottom: 20.0),
                        child: Text('New Events',
                            style: theme().textTheme.displayMedium),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: Text('Tab View 2'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
