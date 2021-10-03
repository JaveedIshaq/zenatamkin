import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';
import 'package:zena_tamkin/views/learning/ecom_management.dart';
import 'package:zena_tamkin/views/learning/freelancing_learning.dart';
import 'package:zena_tamkin/views/learning/seo_learning.dart';
import 'package:zena_tamkin/views/learning/wordpress_learning.dart';
import 'package:zena_tamkin/views/views.dart';

/// Home View of the App
class LearningHomeView extends StatelessWidget {
  /// Home View Constructor
  LearningHomeView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/LearningHomeView';

  final NavigationService? _navigationService = locator<NavigationService>();

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
                  svgName: 'web-development.svg',
                  onTap: () {
                    _navigationService!.navigateToView(WebDevelopmentLearning(
                      file: 'README.md',
                      title: 'WebDevelopment Learning',
                    ));
                  },
                ),
                SubCategoryCard(
                  title: 'Creative Writing',
                  svgName: 'useful-resources.svg',
                  onTap: () {
                    _navigationService!
                        .navigateToView(const CreativeWritingLearning());
                  },
                ),
                SubCategoryCard(
                  title: 'Graphic Design',
                  svgName: 'graphic-design.svg',
                  onTap: () {
                    _navigationService!
                        .navigateToView(const GraphicDesignLearning());
                  },
                ),
                SubCategoryCard(
                  title: 'Digital Marketing',
                  svgName: 'digital-marketing.svg',
                  onTap: () {
                    _navigationService!
                        .navigateToView(const DigitalMarketingLearning());
                  },
                ),
                SubCategoryCard(
                  title: 'Ecommerce\nManagement',
                  svgName: 'ecom-management.svg',
                  onTap: () {
                    _navigationService!.navigateToView(const EcomLearning());
                  },
                ),
                SubCategoryCard(
                  title: 'SEO',
                  svgName: 'seo.svg',
                  onTap: () {
                    _navigationService!.navigateToView(const SEOLearning());
                  },
                ),
                SubCategoryCard(
                  title: 'WordPress',
                  svgName: 'wordpress.svg',
                  onTap: () {
                    _navigationService!
                        .navigateToView(const WordPressLearning());
                  },
                ),
                SubCategoryCard(
                  title: 'Freelancing',
                  svgName: 'freelancer.svg',
                  onTap: () {
                    _navigationService!
                        .navigateToView(const FreelancingLearning());
                  },
                ),
              ],
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
