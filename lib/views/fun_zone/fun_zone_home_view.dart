import 'package:flutter/material.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';

/// Home View of the App
class FunZoneHomeView extends StatelessWidget {
  /// Home View Constructor
  const FunZoneHomeView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/FunZoneHomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ScreenBanner(
              titleText: 'Fun Zone',
              svgName: 'fun-zone.svg',
            ),
            const SizedBox(height: 20),
            Wrap(
              children: [
                SubCategoryCard(
                  title: 'Learning',
                  svgName: 'learning.svg',
                  onTap: () {},
                ),
                SubCategoryCard(
                  title: 'Useful',
                  svgName: 'useful-resources.svg',
                  onTap: () {},
                ),
                SubCategoryCard(
                  title: 'Fun Zone',
                  svgName: 'fun-zone.svg',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}