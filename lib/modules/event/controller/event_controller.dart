import 'package:cic_mobile/modules/event/models/event_data.dart';
import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventController extends GetxController {
  final isLoadingCalender = false.obs;
  final _apiBaseHelper = ApiBaseHelper();
  var eventYearList = <EventData>[].obs;

  Future getCalendar() async {
    isLoadingCalender(true);

    try {
      eventYearList.clear();
      _apiBaseHelper
          .onNetworkRequesting(
              url: 'event/calendar', methode: METHODE.get, isAuthorize: true)
          .then((response) {
        var responseJson = response['data'];

        responseJson.map((e) {
          eventYearList.add(EventData.fromJson(e));
          // if (eventYearList[0].year == 2022)
          debugPrint('year: ${eventYearList[1].year == 2022}');
        }).toList();
        debugPrint('eventYearList: $eventYearList');
        isLoadingCalender(false);
      }).onError((ErrorModel error, stackTrace) {
        debugPrint('= = = = Erorr : $error');
        isLoadingCalender(false);
      });
    } catch (e) {
      debugPrint('Erorrrororoor');
      isLoadingCalender(false);
    }
    return eventYearList;
  }
}
