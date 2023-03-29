import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/modules/event/controller/event_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomMontlyAppBar extends StatefulWidget {
  const CustomMontlyAppBar({super.key});

  @override
  State<CustomMontlyAppBar> createState() => _CustomMontlyAppBarState();
}

class _CustomMontlyAppBarState extends State<CustomMontlyAppBar>
    with SingleTickerProviderStateMixin {
  final eventController = Get.put(EventController());
  final List<String> _tabs = [];
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Container(
        padding: const EdgeInsets.only(bottom: 15.0),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.mainColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: TabBar(
                onTap: (value) {
                  debugPrint('value: $value');
                },
                isScrollable: true,
                indicator:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                controller: _tabController,
                tabs: _tabs.map((String name) => Tab(text: name)).toList(),
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios, color: AppColor.whiteColor),
              onPressed: () {
                if (_tabController.index + 1 < _tabs.length) {
                  _tabController.animateTo(_tabController.index + 1);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Can't move forward"),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
