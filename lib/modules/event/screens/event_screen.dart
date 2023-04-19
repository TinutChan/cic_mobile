import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/event/components/custom_monthly.dart';
import 'package:cic_mobile/modules/event/controller/event_controller.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  final eventController = Get.put(EventController());
  @override
  void initState() {
    eventController.getCalendar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final eventController = Get.put(EventController());
    return Scaffold(
      appBar: customAppBar(
        onPressed: () => context.go('/home'),
        isLeading: true,
        context: context,
        title: 'Event',
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Obx(
            () => eventController.isLoadingCalender.value == true
                ? const Center(child: CircularProgressIndicator())
                : CustomMontlyAppBar(
                    children: eventController.eventYearList.map((element) {
                      return Text(
                        '${element.year}',
                        style: theme().textTheme.displayMedium!.copyWith(
                              color: AppColor.whiteColor,
                            ),
                      );
                    }).toList(),
                  ),
          ),
          Expanded(
            child: CupertinoSlidingSegmentedControl(
              children: const {
                0: Text('hello'),
                1: Text('hi8'),
              },
              onValueChanged: (cal) {},
            ),
          ),
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
