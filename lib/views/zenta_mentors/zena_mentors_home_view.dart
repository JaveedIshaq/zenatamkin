import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/animations/fade_animations.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';
import 'package:zena_tamkin/views/zenta_mentors/create_account.dart';

/// ZenaMentorsHomeView
class ZenaMentorsHomeView extends StatelessWidget {
  /// ZenaMentorsHomeView Constructor
  ZenaMentorsHomeView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/ZenaMentorsHomeView';

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
                titleText: 'Zena Mentors',
                svgName: 'zena-mentors.svg',
              ),
            ),
            const FadeAnimation(
              delay: 1,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '''
            Help women in tech drive their career by meeting their mentors''',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Wrap(
              children: [
                FadeAnimation(
                  delay: 2,
                  child: SubCategoryCard(
                    title: 'Create Account',
                    svgName: 'create-account.svg',
                    onTap: () {
                      _navigationService!
                          .navigateToView(const RegisterScreen());
                    },
                  ),
                ),
                FadeAnimation(
                  delay: 2,
                  child: SubCategoryCard(
                    title: 'Set Skills and Interests',
                    svgName: 'skills.svg',
                    onTap: () {},
                  ),
                ),
                FadeAnimation(
                  delay: 3,
                  child: SubCategoryCard(
                    title: 'Search Mentor',
                    svgName: 'mentor.svg',
                    onTap: () {},
                  ),
                ),
                FadeAnimation(
                  delay: 3,
                  child: SubCategoryCard(
                    title: 'Search Mentee',
                    svgName: 'mentee.svg',
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
