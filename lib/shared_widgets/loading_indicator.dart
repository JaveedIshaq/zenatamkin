import 'package:flutter/material.dart';
import 'package:zena_tamkin/config/colors.dart';

/// Loading Indicator
class LoadingIndicator extends StatelessWidget {
  ///
  const LoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(primaryColor));
  }
}
