import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/config/colors.dart';
import 'package:zena_tamkin/config/locator.dart';

/// Setup Snackbar UI
void setupSnackbarUi() {
  final SnackbarService service = locator<SnackbarService>();

  // Registers a config to be used when calling showSnackbar
  // ignore: cascade_invocations
  service.registerSnackbarConfig(SnackbarConfig(
    backgroundColor: primaryColor,
    titleColor: Colors.white,
    messageColor: Colors.white,
    mainButtonTextColor: Colors.white,
  ));
}
