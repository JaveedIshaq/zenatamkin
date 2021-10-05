import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/config/logger.dart';
import 'package:zena_tamkin/helpers/api_response.dart';
import 'package:zena_tamkin/models/affirmation.dart';
import 'package:zena_tamkin/models/qoute.dart';
import 'package:zena_tamkin/models/youtube_video.dart';

/// AppViewModel
class AppViewModel extends BaseViewModel {
  /// Logger
  Logger log = getLogger('LearningViewModel');

  final DialogService? _dialogService = locator<DialogService>();

  ApiResponse<List<YoutubeVideo>>? _dmYtlist;

  /// Digital Marketing Videos List
  ApiResponse<List<YoutubeVideo>>? get dmYtlist => _dmYtlist;

  ApiResponse<List<YoutubeVideo>>? _gdYtlist;

  /// Digital Marketing Videos List
  ApiResponse<List<YoutubeVideo>>? get gdYtlist => _gdYtlist;

  ApiResponse<List<YoutubeVideo>>? _cwYtlist;

  /// Digital Marketing Videos List
  ApiResponse<List<YoutubeVideo>>? get cwYtlist => _cwYtlist;

  ApiResponse<List<YoutubeVideo>>? _ecomYtlist;

  /// Digital Marketing Videos List
  ApiResponse<List<YoutubeVideo>>? get ecomYtlist => _ecomYtlist;

  ApiResponse<List<YoutubeVideo>>? _seoYtlist;

  /// Digital Marketing Videos List
  ApiResponse<List<YoutubeVideo>>? get seoYtlist => _seoYtlist;

  ApiResponse<List<YoutubeVideo>>? _flYtlist;

  /// Digital Marketing Videos List
  ApiResponse<List<YoutubeVideo>>? get flYtlist => _flYtlist;

  ApiResponse<List<YoutubeVideo>>? _wpYtlist;

  /// Digital Marketing Videos List
  ApiResponse<List<YoutubeVideo>>? get wpYtlist => _wpYtlist;

  ApiResponse<Quote>? _quote;

  /// Quote
  ApiResponse<Quote>? get quote => _quote;

  ApiResponse<Affirmation>? _affirmation;

  /// Quote
  ApiResponse<Affirmation>? get affirmation => _affirmation;

  /// request DM YT videos
  /// ***********************************************************

  Future requestDMYTvideos({required BuildContext context}) async {
    List<YoutubeVideo>? result = [];

    setBusy(true);
    _dmYtlist = ApiResponse.loading('Requesting Fetch');
    try {
      String data = await DefaultAssetBundle.of(context)
          .loadString('assets/json/dmplaylist.json');

      var responseData = json.decode(data);

      result = (responseData['items'] as List)
          .map((i) => YoutubeVideo.fromJson(i as Map<String, dynamic>))
          .toList();

      _dmYtlist = ApiResponse.completed(result);
      setBusy(false);
    } catch (e) {
      setBusy(false);
      await _dialogService!.showDialog(
        title: 'error_messages.error',
        description: e.toString(),
      );
    }
  }

  /// ***********************************************************

  /// request DM YT videos
  /// ***********************************************************

  Future requestGDYTvideos({required BuildContext context}) async {
    List<YoutubeVideo>? result = [];

    setBusy(true);
    _gdYtlist = ApiResponse.loading('Requesting Fetch');
    try {
      String data = await DefaultAssetBundle.of(context)
          .loadString('assets/json/gdplaylist.json');

      var responseData = json.decode(data);

      result = (responseData['items'] as List)
          .map((i) => YoutubeVideo.fromJson(i as Map<String, dynamic>))
          .toList();

      _gdYtlist = ApiResponse.completed(result);
      setBusy(false);
    } catch (e) {
      setBusy(false);
      await _dialogService!.showDialog(
        title: 'error_messages.error',
        description: e.toString(),
      );
    }
  }

  /// ***********************************************************

  /// request DM YT videos
  /// ***********************************************************

  Future requestCWYTvideos({required BuildContext context}) async {
    List<YoutubeVideo>? result = [];

    setBusy(true);
    _cwYtlist = ApiResponse.loading('Requesting Fetch');
    try {
      String data = await DefaultAssetBundle.of(context)
          .loadString('assets/json/cwplaylist.json');

      var responseData = json.decode(data);

      result = (responseData['items'] as List)
          .map((i) => YoutubeVideo.fromJson(i as Map<String, dynamic>))
          .toList();

      _cwYtlist = ApiResponse.completed(result);
      setBusy(false);
    } catch (e) {
      setBusy(false);
      await _dialogService!.showDialog(
        title: 'error_messages.error',
        description: e.toString(),
      );
    }
  }

  /// ***********************************************************

  /// request DM YT videos
  /// ***********************************************************

  Future requestECOMYTvideos({required BuildContext context}) async {
    List<YoutubeVideo>? result = [];

    setBusy(true);
    _ecomYtlist = ApiResponse.loading('Requesting Fetch');
    try {
      String data = await DefaultAssetBundle.of(context)
          .loadString('assets/json/ecomplaylist.json');

      var responseData = json.decode(data);

      result = (responseData['items'] as List)
          .map((i) => YoutubeVideo.fromJson(i as Map<String, dynamic>))
          .toList();

      _ecomYtlist = ApiResponse.completed(result);
      setBusy(false);
    } catch (e) {
      setBusy(false);
      await _dialogService!.showDialog(
        title: 'error_messages.error',
        description: e.toString(),
      );
    }
  }

  /// ***********************************************************

  /// request DM YT videos
  /// ***********************************************************

  Future requestSeoYTvideos({required BuildContext context}) async {
    List<YoutubeVideo>? result = [];

    setBusy(true);
    _seoYtlist = ApiResponse.loading('Requesting Fetch');
    try {
      String data = await DefaultAssetBundle.of(context)
          .loadString('assets/json/seoplaylist.json');

      var responseData = json.decode(data);

      result = (responseData['items'] as List)
          .map((i) => YoutubeVideo.fromJson(i as Map<String, dynamic>))
          .toList();

      _seoYtlist = ApiResponse.completed(result);
      setBusy(false);
    } catch (e) {
      setBusy(false);
      await _dialogService!.showDialog(
        title: 'error_messages.error',
        description: e.toString(),
      );
    }
  }

  /// ***********************************************************

  /// request DM YT videos
  /// ***********************************************************

  Future requestFLYTvideos({required BuildContext context}) async {
    List<YoutubeVideo>? result = [];

    setBusy(true);
    _flYtlist = ApiResponse.loading('Requesting Fetch');
    try {
      String data = await DefaultAssetBundle.of(context)
          .loadString('assets/json/flplaylist.json');

      var responseData = json.decode(data);

      result = (responseData['items'] as List)
          .map((i) => YoutubeVideo.fromJson(i as Map<String, dynamic>))
          .toList();

      _flYtlist = ApiResponse.completed(result);
      setBusy(false);
    } catch (e) {
      setBusy(false);
      await _dialogService!.showDialog(
        title: 'error_messages.error',
        description: e.toString(),
      );
    }
  }

  /// ***********************************************************

  /// request DM YT videos
  /// ***********************************************************

  Future requestWPYTvideos({required BuildContext context}) async {
    List<YoutubeVideo>? result = [];

    setBusy(true);
    _wpYtlist = ApiResponse.loading('Requesting Fetch');
    try {
      String data = await DefaultAssetBundle.of(context)
          .loadString('assets/json/wpplaylist.json');

      var responseData = json.decode(data);

      result = (responseData['items'] as List)
          .map((i) => YoutubeVideo.fromJson(i as Map<String, dynamic>))
          .toList();

      _wpYtlist = ApiResponse.completed(result);
      setBusy(false);
    } catch (e) {
      setBusy(false);
      await _dialogService!.showDialog(
        title: 'error_messages.error',
        description: e.toString(),
      );
    }
  }

  /// ***********************************************************
  ///
  /// https://api.quotable.io/random

  /// request DM YT videos
  /// ***********************************************************

  Future requestRandomQuote() async {
    Quote result;

    setBusy(true);
    _quote = ApiResponse.loading('Requesting Fetch');
    try {
      var data = await http.get(Uri.parse('https://api.quotable.io/random'));

      var responseData = json.decode(data.body);

      result = Quote.fromJson(responseData as Map<String, dynamic>);

      _quote = ApiResponse.completed(result);
      setBusy(false);
    } catch (e) {
      setBusy(false);
      await _dialogService!.showDialog(
        title: 'error_messages.error',
        description: e.toString(),
      );
    }
  }

  /// ***********************************************************
  /// https://www.affirmations.dev/
  /// ***********************************************************

  Future requestAffirmation() async {
    Affirmation result;

    setBusy(true);
    _affirmation = ApiResponse.loading('Requesting Fetch');
    try {
      var data = await http.get(Uri.parse('https://www.affirmations.dev'));

      var responseData = json.decode(data.body);

      result = Affirmation.fromJson(responseData as Map<String, dynamic>);

      _affirmation = ApiResponse.completed(result);
      setBusy(false);
    } catch (e) {
      setBusy(false);
      await _dialogService!.showDialog(
        title: 'error_messages.error',
        description: e.toString(),
      );
    }
  }

  /// ***********************************************************
}
