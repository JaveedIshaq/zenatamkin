import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';
import 'package:zena_tamkin/views/fun_zone/affirmations.dart';
import 'package:zena_tamkin/views/fun_zone/brain_feed.dart';

/// Home View of the App
class FunZoneHomeView extends StatelessWidget {
  /// Home View Constructor
  FunZoneHomeView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/FunZoneHomeView';

  final NavigationService? _navigationService = locator<NavigationService>();

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
                  title: 'AjkiPakeay',
                  svgName: 'cooking.svg',
                  onTap: () {},
                ),
                SubCategoryCard(
                  title: 'Brain Feed',
                  svgName: 'quotes.svg',
                  onTap: () {
                    _navigationService!.navigateToView(BrainFoodQuote());
                  },
                ),
                SubCategoryCard(
                  title: 'Affirmation',
                  svgName: 'affirmation.svg',
                  onTap: () {
                    _navigationService!.navigateToView(Affirmations());
                  },
                ),
                SubCategoryCard(
                  title: 'AjkaMousam',
                  svgName: 'weather.svg',
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
