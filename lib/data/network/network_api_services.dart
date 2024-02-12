import 'dart:io';

import 'package:getx_mvvm/data/app_exception.dart';
import 'package:getx_mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
    } on SocketException {
      throw InternetException('');
    }
  }
}
