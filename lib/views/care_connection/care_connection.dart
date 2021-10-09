import 'package:flutter/material.dart';
import 'package:zena_tamkin/animations/fade_animations.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';

/// Home View of the App
class CareConnectionHomeView extends StatelessWidget {
  /// Home View Constructor
  const CareConnectionHomeView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/CareConnectionHomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const FadeAnimation(
              delay: 1,
              child: ScreenBanner(
                titleText: 'Care Connection',
                svgName: 'care-connection.svg',
              ),
            ),
            const FadeAnimation(
              delay: 1,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '''
            Help women to be in Care of loved ones by sending current location on button and also the shaking the device''',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Wrap(
              children: [
                FadeAnimation(
                  delay: 2,
                  child: SubCategoryCard(
                    title: 'Set a Number',
                    svgName: 'set-number.svg',
                    onTap: () {},
                  ),
                ),
                FadeAnimation(
                  delay: 2,
                  child: SubCategoryCard(
                    title: 'Enable Device Shake to Send SMS',
                    svgName: 'shake.svg',
                    onTap: () {},
                  ),
                ),
                FadeAnimation(
                  delay: 3,
                  child: SubCategoryCard(
                    title: 'Send Current Location Now',
                    svgName: 'mylocation.svg',
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
