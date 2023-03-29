import 'package:cic_mobile/modules/event/models/year_event_model/year_event_model.dart';
import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventController extends GetxController {
  final isLoading = false.obs;
  final _apiBaseHelper = ApiBaseHelper();
  var eventYearList = <EventYearModel>[].obs;

  Future getCalendar() async {
    isLoading(true);
    try {
      _apiBaseHelper
          .onNetworkRequesting(
              url: 'event/calendar', methode: METHODE.get, isAuthorize: true)
          .then((response) {
        var responseJson = response['data'];
        responseJson.map((e) {
          eventYearList.add(EventYearModel.fromJson(e));
          debugPrint('= = = = $eventYearList');
        }).toList();
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
