import 'package:cic_mobile/modules/event/models/event_data.dart';
import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventController extends GetxController {
  final isLoading = false.obs;
  final _apiBaseHelper = ApiBaseHelper();
  var eventYearList = <EventData>[].obs;

  Future getCalendar() async {
    isLoading(true);
    try {
      _apiBaseHelper
          .onNetworkRequesting(
              url: 'event/calendar', methode: METHODE.get, isAuthorize: true)
          .then((response) {
        var responseJson = response['data'];
        responseJson.map((e) {
          eventYearList.add(EventData.fromJson(e));
        }).toList();
        debugPrint('= = = = $eventYearList');
        // eventYearList.add(EventYearModel.fromJson(responseJson[0]));
        // debugPrint('eventYearList: $eventYearList');

        isLoading(false);
      }).onError((ErrorModel error, stackTrace) {
        debugPrint('= = = = Erorr : $error');
        isLoading(false);
      });
    } catch (e) {
      debugPrint('Erorrrororoor');
      isLoading(false);
    } finally {}
    return eventYearList;
  }
}
