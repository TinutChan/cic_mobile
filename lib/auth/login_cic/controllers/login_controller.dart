import 'package:cic_mobile/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/helper/shared_preference.dart';

class LoginController extends GetxController {
  final localStorae = LocalStorage();
  final phoneNumberController = TextEditingController().obs;
  final phone = ''.obs;
  final pass = ''.obs;
  final baseUrl = ApiBaseHelper();
  final String? token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiMGMxMjc4OThkNDQ2NTBmMWEzYTMyNWQ3ZWEzNGQ4OTdlYjFmM2JmYjU2Y2MwMTQ5OWRmYzRiMjc4MTU2MDJkMTI2OTBkM2E0YTMzNzhkZmQiLCJpYXQiOjE2NzY1NjU4MTAuODkzMzg0LCJuYmYiOjE2NzY1NjU4MTAuODkzMzkyLCJleHAiOjE3MDgxMDE4MTAuODgzODgsInN1YiI6IjgxIiwic2NvcGVzIjpbIioiXX0.Ygp6-whSSQ866PMYdmducsITkKE-CtD2glevop0QIKfix7Cfm9hHaM_VMysgINT3ZeBuZvhWiRp2eOkh9HJinZHxuo8nezjtdqOI3nF2XydwjGP_q4yvEDZmtT2qD8x746OZeN74T29ibJfQkO2x3zdF4fysAZvTAm2_pNvBPNiRMR0JlRDI01OyVudORs2MmncEPKsfEtVgbCHhHLX6Xs7vlEDlDfa373hTCPQgmzwbYOc0K06ZkH7GJUOFzx0IgR8J4mYZid5f4w4TDa_Ml6O9k7wGJ5uIDC8i7FxbcqMpL8bXWDpUZKBzAi2nNGqOG7K99dUKBerlGHEg2eeE4A4waIgz4mCMP730rVdNWR-y4PUL245kUYZX_us6lDISLAaAQTm8cHi9oespWy50hAF0XzcxUtVe17yU42A8-BT4hhRk1p9gRNa6zYVKlg2i35YER_gBsMCAeUGJXWQWNkd22wLhCUmvP-xOmyjum7-YrCh6RSgVVUWOsVW5dJ6vTCujNypJW_Zxk5TJllaLwK4D99kqIyVPIAyCBug9XoCD697Me9p0bydYWRt6AAoBYGpSl4gMjJ5BjJRIo7BAz7Vr9tsBt1tzNTT8ev1iE7iZRZMDAsceHk30yKj09HZDA8Isu4yg3_1Y4oFzax8pNZGumdoXh-hnBS1LvwwA_X4';

  Future<void> getLoginControler() async {
    await baseUrl.onNetworkRequesting(
        url: 'login',
        methode: METHODE.post,
        isAuthorize: true,

        body: {
          'phone': '+85516873783',
          "password": "Tinut12345@?"
        }).then((response) {
      debugPrint('response: $response');
    });
  }
}
