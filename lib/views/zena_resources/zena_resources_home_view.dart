import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';
import 'package:zena_tamkin/views/zena_resources/women_in_tech/women_in_tech.dart';

/// Home View of the App
class ZenaResourcesHomeView extends StatelessWidget {
  /// Home View Constructor
  ZenaResourcesHomeView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/ZenaResourcesHomeView';

  final NavigationService? _navigationService = locator<NavigationService>();

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
                  title: 'Women in\nTechnology',
                  svgName: 'learning.svg',
                  onTap: () {
                    _navigationService!.navigateToView(WomenInTech(
                      file: 'README.md',
                      title: 'WebDevelopment Learning',
                    ));
                  },
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
