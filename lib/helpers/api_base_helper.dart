import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:zena_tamkin/config/constants.dart';
import 'package:zena_tamkin/config/logger.dart';
import 'package:zena_tamkin/helpers/app_exceptions.dart';

/// ApiBaseHelper Class
/// It contains Functions to call the api
class ApiBaseHelper {
  /// Logger Instance
  Logger log = getLogger('ApiBaseHelper');

  /// Get Api Function
  Future<dynamic> get(String url) async {
    // print('Api Get, url $url');
    dynamic responseJson;

    try {
      final http.Response response =
          await http.get(Uri.parse(BASE_API_URL + url));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    // print("Api get recieved");

    return responseJson;
  }

  /// An Authenticated Get Request
  Future<dynamic> getRequestWithToken(String url) async {
    log.i('Api Get, url $url');
    // final String? jwtToken = await getJwtToken();
    // final String callerId = await getId();
    dynamic responseJson;

    try {
      final http.Response response = await http.get(
        Uri.parse(BASE_API_URL + url),
        headers: <String, String>{
          'Content-Type': 'application/json',
          // 'caller_id': callerId,
          // 'Authorization': 'Bearer $jwtToken',
        },
      );
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    //  print("Api get recieved");

    return responseJson;
  }

  /// An authenticated Post Request
  Future<dynamic> postReuestWithToken(String url, dynamic body) async {
    log.i('Api Post, url $BASE_API_URL$url');

    // final String? jwtToken = await getJwtToken();
    // final String callerId = await getId();

    dynamic responseJson;

    try {
      final http.Response response = await http.post(
        Uri.parse(BASE_API_URL + url),
        body: json.encode(body),
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          // 'caller_id': callerId,
          // 'Authorization': 'Bearer $jwtToken',
        },
      );
      log.i(json.decode(response.body));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  /// An authenticated Put Request
  Future<dynamic> putReuestWithToken(String url, dynamic body) async {
    log.i('Api Put, url $BASE_API_URL$url');

    // final String? jwtToken = await getJwtToken();
    // final String callerId = await getId();

    dynamic responseJson;

    try {
      final http.Response response = await http.put(
        Uri.parse(BASE_API_URL + url),
        body: json.encode(body),
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          // 'caller_id': callerId,
          // 'Authorization': 'Bearer $jwtToken',
        },
      );

      if (response.statusCode == 204) {
        responseJson = true;
      } else {
        log.i(json.decode(response.body));
        responseJson = _returnResponse(response);
      }
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  /// Put Request
  Future<dynamic> put(String url, dynamic body) async {
    log.i('Api put, url $url');

    // final String? jwtToken = await getJwtToken();
    // final String callerId = await getId();
    dynamic responseJson;

    try {
      final http.Response response = await http.put(
        Uri.parse(BASE_API_URL + url),
        body: body,
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          // 'caller_id': callerId,
          // 'Authorization': 'Bearer $jwtToken',
        },
      );
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  /// Delete Request
  Future<dynamic> delete(String url, dynamic body) async {
    log.i('Api delete, url $url');
    dynamic responseJson;

    try {
      final http.Response response =
          await http.post(Uri.parse(BASE_API_URL + url), body: body);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
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
