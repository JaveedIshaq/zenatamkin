import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:zena_tamkin/config/constants.dart';
import 'package:zena_tamkin/config/logger.dart';
import 'package:zena_tamkin/helpers/api_base_helper.dart';
import 'package:zena_tamkin/models/youtube_video.dart';

/// Api Service Class
class ApiService {
  /// logger instance
  Logger log = getLogger('ApiService');

  /// ApiBase helper
  final ApiBaseHelper _apiHelper = ApiBaseHelper();

  /// read
  Future<String> getTextData({required String file}) async {
    var url = Uri.parse(techtonicaBaseUrl + file);
    var response = await http.get(url);
    return response.body;
  }

  /// read
  Future getYTPListData({required String playListId}) async {
    List<YoutubeVideo>? _dmYtlist;

    var url = '$ytPlbaseUrl$playListId&key=$youtubeApiKey';

    final responseData = await _apiHelper.get(url);

    _dmYtlist = (responseData['items'] as List)
        .map((i) => YoutubeVideo.fromJson(i as Map<String, dynamic>))
        .toList();

    return _dmYtlist;
  }
}
