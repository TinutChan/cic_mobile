import 'package:cic_mobile/modules/event/components/custom_monthly.dart';
import 'package:cic_mobile/modules/event/components/custom_tabbar.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppWithBlueBg(
        context: context,
        title: 'Event',
        centerTitle: false,
      ),
      body: Column(
        children: const [
          CustomMontlyAppBar(),
          Expanded(child: TabScreen()),
        ],
      ),
    );
  }
}
