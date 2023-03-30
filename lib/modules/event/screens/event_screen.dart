import 'package:cic_mobile/modules/event/components/custom_monthly.dart';
import 'package:cic_mobile/modules/event/controller/event_controller.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final eventController = Get.put(EventController());
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Event',
        centerTitle: false,
      ),
      body: Column(
        children: const [
          CustomMontlyAppBar(),
          // Expanded(child: TabScreen()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          eventController.getCalendar();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
