import 'package:flutter/material.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';

/// Home View of the App
class LearningHomeView extends StatelessWidget {
  /// Home View Constructor
  const LearningHomeView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/LearningHomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ScreenBanner(
              titleText: 'Learning',
              svgName: 'learning.svg',
            ),
            const SizedBox(height: 20),
            Wrap(
              children: [
                SubCategoryCard(
                  title: 'Web Development',
                  svgName: 'learning.svg',
                  onTap: () {},
                ),
                SubCategoryCard(
                  title: 'Creative Writing',
                  svgName: 'useful-resources.svg',
                  onTap: () {},
                ),
                SubCategoryCard(
                  title: 'Graphic Design',
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
