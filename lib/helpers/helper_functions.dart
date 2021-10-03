// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/config/logger.dart';
import 'package:zena_tamkin/views/views.dart';

final NavigationService? _navigationService = locator<NavigationService>();

/// Logger Instance
Logger log = getLogger('CrunchCardViewModel');

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
