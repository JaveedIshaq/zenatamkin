import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/helpers/helper_functions.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';
import 'package:zena_tamkin/views/care_connection/care_connection.dart';
import 'package:zena_tamkin/views/fun_zone/fun_zone_home_view.dart';
import 'package:zena_tamkin/views/views.dart';
import 'package:zena_tamkin/views/zena_resources/zena_resources_home_view.dart';

/// Home View of the App
class HomeView extends StatelessWidget {
  /// Home View Constructor
  HomeView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/HomeView';

  /// saving back button press time
  DateTime timeBackPressed = DateTime.now();

  final NavigationService? _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => willPopScopeLogic(timeBackPressed),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HomeScreenBanner(),
              const SizedBox(height: 10),
              CategoryCard(
                title: 'Learning',
                svgName: 'learning.svg',
                onTap: () {
                  _navigationService!.navigateTo(LearningHomeView.route);
                },
              ),
              CategoryCard(
                title: 'Zena Mentors',
                svgName: 'zena-mentors.svg',
                onTap: () {
                  _navigationService!.navigateTo(ZenaMentorsHomeView.route);
                },
              ),
              CategoryCard(
                title: 'Zena Resources',
                svgName: 'useful-resources.svg',
                onTap: () {
                  _navigationService!.navigateTo(ZenaResourcesHomeView.route);
                },
              ),
              CategoryCard(
                title: 'Fun Zone',
                svgName: 'fun-zone.svg',
                onTap: () {
                  _navigationService!.navigateTo(FunZoneHomeView.route);
                },
              ),
              CategoryCard(
                title: 'Care Connection',
                svgName: 'care-connection.svg',
                onTap: () {
                  _navigationService!.navigateTo(CareConnectionHomeView.route);
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
