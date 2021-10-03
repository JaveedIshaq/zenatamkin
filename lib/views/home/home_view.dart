import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';
import 'package:zena_tamkin/views/fun_zone/fun_zone_home_view.dart';
import 'package:zena_tamkin/views/views.dart';

/// Home View of the App
class HomeView extends StatelessWidget {
  /// Home View Constructor
  HomeView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/HomeView';

  final NavigationService? _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeScreenBanner(),
            const SizedBox(height: 20),
            CategoryCard(
              title: 'Learning',
              svgName: 'learning.svg',
              onTap: () {
                _navigationService!.navigateTo(LearningHomeView.route);
              },
            ),
            CategoryCard(
              title: 'Useful Resources',
              svgName: 'useful-resources.svg',
              onTap: () {
                _navigationService!.navigateTo(UsefulResourcesHomeView.route);
              },
            ),
            CategoryCard(
              title: 'Fun Zone',
              svgName: 'fun-zone.svg',
              onTap: () {
                _navigationService!.navigateTo(FunZoneHomeView.route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
