import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/helpers/helper_functions.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';
import 'package:zena_tamkin/views/fun_zone/affirmations.dart';
import 'package:zena_tamkin/views/fun_zone/brain_feed.dart';
import 'package:zena_tamkin/views/fun_zone/random_recipe.dart';

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
                  title: 'Reipe of the Day',
                  svgName: 'cooking.svg',
                  onTap: () {
                    _navigationService!.navigateToView(const RandomReecipe());
                  },
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
                  title: 'Write to Us',
                  svgName: 'assets/svg/write-to-us.svg',
                  onTap: () {
                    launchMailClient(email: 'ishaqjaveed1@gmail.com');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
