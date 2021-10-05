import 'package:flutter/material.dart';
import 'package:zena_tamkin/config/colors.dart';

/// Loading Indicator
class LoadingIndicator extends StatelessWidget {
  ///
  const LoadingIndicator({
    Key? key,
    this.color = primaryColor,
  }) : super(key: key);

  ///
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(color)),
    );
  }
}
