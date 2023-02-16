import 'dart:convert';
// import 'package:cicgreenloan/src/utils/helper/storge_data_local.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get_connect.dart';

class ErrorModel {
  final int? statusCode;
  final dynamic bodyString;
  const ErrorModel({this.statusCode, this.bodyString});
}

enum METHODE {
  get,
  post,
  delete,
  update,
}

class ApiBaseHelper extends GetConnect {
  final String? baseurl = dotenv.get('MAIN_API_URL');
  Future<dynamic> onNetworkRequesting(
      {required String url,
      Map<String, String>? header,
      Map<String, dynamic>? body,
      required METHODE? methode,
      required bool isAuthorize}) async {
    // final token = await StorageDataLocal.getData('current_user') ?? "";
    final fullUrl = baseurl! + url;
    Map<String, String> header = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': isAuthorize ? 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiMGMxMjc4OThkNDQ2NTBmMWEzYTMyNWQ3ZWEzNGQ4OTdlYjFmM2JmYjU2Y2MwMTQ5OWRmYzRiMjc4MTU2MDJkMTI2OTBkM2E0YTMzNzhkZmQiLCJpYXQiOjE2NzY1NjU4MTAuODkzMzg0LCJuYmYiOjE2NzY1NjU4MTAuODkzMzkyLCJleHAiOjE3MDgxMDE4MTAuODgzODgsInN1YiI6IjgxIiwic2NvcGVzIjpbIioiXX0.Ygp6-whSSQ866PMYdmducsITkKE-CtD2glevop0QIKfix7Cfm9hHaM_VMysgINT3ZeBuZvhWiRp2eOkh9HJinZHxuo8nezjtdqOI3nF2XydwjGP_q4yvEDZmtT2qD8x746OZeN74T29ibJfQkO2x3zdF4fysAZvTAm2_pNvBPNiRMR0JlRDI01OyVudORs2MmncEPKsfEtVgbCHhHLX6Xs7vlEDlDfa373hTCPQgmzwbYOc0K06ZkH7GJUOFzx0IgR8J4mYZid5f4w4TDa_Ml6O9k7wGJ5uIDC8i7FxbcqMpL8bXWDpUZKBzAi2nNGqOG7K99dUKBerlGHEg2eeE4A4waIgz4mCMP730rVdNWR-y4PUL245kUYZX_us6lDISLAaAQTm8cHi9oespWy50hAF0XzcxUtVe17yU42A8-BT4hhRk1p9gRNa6zYVKlg2i35YER_gBsMCAeUGJXWQWNkd22wLhCUmvP-xOmyjum7-YrCh6RSgVVUWOsVW5dJ6vTCujNypJW_Zxk5TJllaLwK4D99kqIyVPIAyCBug9XoCD697Me9p0bydYWRt6AAoBYGpSl4gMjJ5BjJRIo7BAz7Vr9tsBt1tzNTT8ev1iE7iZRZMDAsceHk30yKj09HZDA8Isu4yg3_1Y4oFzax8pNZGumdoXh-hnBS1LvwwA_X4' : ''
    };
    try {
      switch (methode) {
        case METHODE.get:
          final response = await get(fullUrl, headers: header);
          return _returnResponse(response);
        case METHODE.post:
          if (body != null) {
            final response =
                await post(fullUrl, json.encode(body), headers: header);
            return _returnResponse(response);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));

        case METHODE.delete:
          final response = await delete(fullUrl, headers: header);
          return _returnResponse(response);
        case METHODE.update:
          if (body != null) {
            final response =
                await put(fullUrl, json.encode(body), headers: header);
            return _returnResponse(response);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));

        default:
          break;
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 201:
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 202:
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 404:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 400:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 401:
      case 403:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));

      case 500:
        break;
      default:
        {
          return Future.error(ErrorModel(
              statusCode: response.statusCode,
              bodyString: json.decode(response.bodyString ?? "")));
        }
    }
  }
}
