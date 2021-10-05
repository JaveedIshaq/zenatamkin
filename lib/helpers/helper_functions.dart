// ignore_for_file: cascade_invocations

import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/config/logger.dart';
import 'package:zena_tamkin/views/views.dart';

final NavigationService? _navigationService = locator<NavigationService>();

/// Logger Instance
Logger log = getLogger('Helper Functions');

///handleTapInmarkDown
void handleTapInmarkDown({
  required String text,
  required String? href,
  required String? title,
  required ScrollController controller,
}) {
  /// if href Contains http, open Url in Browser
  if (href!.contains('http')) {
    log.w('it is a URL');
    _launchURL(url: href);
  }

  /// if href Contains .md, open it in another screen
  if (href.contains('.md') && href.contains('#')) {
    log.w('it is a same file link');

    // controller.animateTo(0,
    //     duration: const Duration(seconds: 1), curve: Curves.easeOut);
  }

  /// if href Contains .md, open it in another screen
  if (href.contains('#')) {
    log.w('it is a same file link');

    // controller.animateTo(0,
    //     duration: const Duration(seconds: 1), curve: Curves.easeOut);
  }

  /// if href Contains .md, open it in another screen
  if (href.contains('.md') && !href.contains('#')) {
    log.w('it is a markdown file');

    _navigationService!.navigateToView(WebDevelopmentLearning(
      file: href,
      title: text,
    ));
  }

  log.i('Text: $text');
  log.i('href: $href');
  log.i('title: $title');
}

Future<void> _launchURL({required String url}) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    // ignore: only_throw_errors
    throw 'Could not launch $url';
  }
}

/// Hardware back Button Press
/// DateTime timeBackPressed = DateTime.now();
/// timeBackPressed is reviced from the View
Future<bool> willPopScopeLogic(DateTime timeBackPressed) async {
  final Duration difference = DateTime.now().difference(timeBackPressed);
  final bool isExitWarning = difference >= const Duration(seconds: 2);
  timeBackPressed = DateTime.now();

  if (isExitWarning) {
    const String message = 'press back again to exit';
    await Fluttertoast.showToast(msg: message);
    return false;
  } else {
    await Fluttertoast.cancel();
    return true;
  }
}

/// Capture Screenshot and Share
Future<void> captureSocialPng({
  required BuildContext context,
  required GlobalKey previewContainer,
}) {
  List<String> imagePaths = [];
  final RenderBox box = context.findRenderObject() as RenderBox;
  return Future.delayed(const Duration(milliseconds: 20), () async {
    RenderRepaintBoundary? boundary = previewContainer.currentContext!
        .findRenderObject() as RenderRepaintBoundary?;
    ui.Image image = await boundary!.toImage();
    final directory = (await getApplicationDocumentsDirectory()).path;
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData!.buffer.asUint8List();
    File imgFile = File('$directory/screenshot.png');
    imagePaths.add(imgFile.path);
    imgFile.writeAsBytes(pngBytes).then((value) async {
      await Share.shareFiles(imagePaths,
          subject: 'Share',
          text: 'Check this Out!',
          sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    }).catchError((onError) {
      log.e(onError);
    });
  });
}
