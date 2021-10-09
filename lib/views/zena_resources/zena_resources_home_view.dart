import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/animations/fade_animations.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';
import 'women_in_tech.dart';
import 'women_in_tech_talks.dart';

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
            const FadeAnimation(
              delay: 1,
              child: ScreenBanner(
                titleText: 'Useful Zena Resources',
                svgName: 'useful-resources.svg',
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              children: [
                FadeAnimation(
                  delay: 2,
                  child: SubCategoryCard(
                    title: 'Organizations to\npromote Women in Technology',
                    svgName: 'organizations-to-promote-women.svg',
                    onTap: () {
                      _navigationService!.navigateToView(WomeninTech(
                        file: 'organizations-to-promote-women-in-technology.md',
                        title: '',
                        svgName: 'organizations-to-promote-women.svg',
                      ));
                    },
                  ),
                ),
                FadeAnimation(
                  delay: 2,
                  child: SubCategoryCard(
                    title: 'Scholarships For Women',
                    svgName: 'scholarships.svg',
                    onTap: () {
                      _navigationService!.navigateToView(WomeninTech(
                        file: 'scholarships-and-programs-for-women.md',
                        title: '',
                        svgName: 'scholarships.svg',
                      ));
                    },
                  ),
                ),
                FadeAnimation(
                  delay: 2.5,
                  child: SubCategoryCard(
                    title: 'Tech Events and Porgrams for\nWomen',
                    svgName: 'events.svg',
                    onTap: () {
                      _navigationService!.navigateToView(WomeninTech(
                        file: 'tech-events-and-programs-for-women.md',
                        title: '',
                        svgName: 'events.svg',
                      ));
                    },
                  ),
                ),
                FadeAnimation(
                  delay: 2.5,
                  child: SubCategoryCard(
                    title: 'Women in Technology Role Models',
                    svgName: 'role-model.svg',
                    onTap: () {
                      _navigationService!.navigateToView(WomeninTech(
                        file: 'women-in-technology-role-models.md',
                        title: '',
                        svgName: 'role-model.svg',
                      ));
                    },
                  ),
                ),
                FadeAnimation(
                  delay: 3,
                  child: SubCategoryCard(
                    title: 'Helpful GitHub Repositories',
                    svgName: 'women-in-tech.svg',
                    onTap: () {
                      _navigationService!.navigateToView(WomeninTech(
                        file: 'helpful-gitHub-repositories.md',
                        title: '',
                        svgName: 'women-in-tech.svg',
                      ));
                    },
                  ),
                ),
                FadeAnimation(
                  delay: 3,
                  child: SubCategoryCard(
                    title: 'Women in Tech\nTalks',
                    svgName: 'positive_attitude.svg',
                    onTap: () {
                      _navigationService!
                          .navigateToView(const WomenInTechTalks());
                    },
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
