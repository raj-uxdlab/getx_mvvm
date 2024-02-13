import 'dart:convert';
import 'dart:io';

import 'package:getx_mvvm/data/app_exception.dart';
import 'package:getx_mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;

    try {
      final response = await http.get(Uri.parse(url));
    } on SocketException {
      throw InternetException('');
    }

    return responseJson;
  }

  @override
  Future<dynamic> postApi(String url, var data) async {
    dynamic responseJson;

    try {
      final response = await http.post(Uri.parse(url),
          body: jsonEncode(data),
          headers: {'Content-Type': 'application/json'});
    } on SocketException {
      throw InternetException('');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body);
      case 401:
      case 403:
        throw UnauthorisedException(response.body);
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
