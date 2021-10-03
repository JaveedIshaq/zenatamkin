import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:zena_tamkin/config/logger.dart';
import 'package:zena_tamkin/helpers/app_exceptions.dart';

/// ApiBaseHelper Class
/// It contains Functions to call the api
class ApiBaseHelper {
  /// Logger Instance
  Logger log = getLogger('ApiBaseHelper');

  /// Get Api Function
  Future<dynamic> get(String url) async {
    log.i('Api Get, url $url');
    dynamic responseJson;

    try {
      final http.Response response = await http.get(Uri.parse(url));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    // print("Api get recieved");

    return responseJson;
  }
}

dynamic _returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      final dynamic responseJson = json.decode(response.body.toString());

      return responseJson;
    case 202:
      final dynamic responseJson = json.decode(response.body.toString());

      return responseJson;
    case 204:
      return response;
    case 400:
      throw BadRequestException(response.body.toString());
    case 401:
    case 403:
      throw UnauthorizedException(response.body.toString());
    case 409:
      throw UnauthorizedException(response.body.toString());
    case 500:
    default:
      throw FetchDataException('''
Error occured while Communication with Server with StatusCode : ${response.statusCode}''');
  }
}
