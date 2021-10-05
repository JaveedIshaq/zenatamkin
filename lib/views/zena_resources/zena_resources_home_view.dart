import 'package:flutter/material.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';

/// Home View of the App
class ZenaResourcesHomeView extends StatelessWidget {
  /// Home View Constructor
  const ZenaResourcesHomeView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/ZenaResourcesHomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ScreenBanner(
              titleText: 'Useful Zena Resources',
              svgName: 'useful-resources.svg',
            ),
            const SizedBox(height: 20),
            Wrap(
              children: [
                SubCategoryCard(
                  title: 'Women in Technology',
                  svgName: 'learning.svg',
                  onTap: () {},
                ),
                SubCategoryCard(
                  title: 'Top Pakistani\nWomen in Tech',
                  svgName: 'useful-resources.svg',
                  onTap: () {},
                ),
                SubCategoryCard(
                  title: 'Top Pakistani\nWomen in All Fields',
                  svgName: 'fun-zone.svg',
                  onTap: () {},
                ),
                SubCategoryCard(
                  title: 'Tamkin Links',
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
