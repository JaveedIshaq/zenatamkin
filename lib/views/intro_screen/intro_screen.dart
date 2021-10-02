import 'package:flutter/material.dart';

import 'components/intro_screen_body.dart';

/// Intro Screens Shown at First Load of the App
class IntroScreen extends StatelessWidget {
  ///
  const IntroScreen({Key? key}) : super(key: key);

  /// Route Name
  static String route = '/IntroScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreenBody(),
    );
  }
}
