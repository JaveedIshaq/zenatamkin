import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zena_tamkin/config/colors.dart';

/// Home View of the App
class HomeView extends StatefulWidget {
  /// Home View Constructor
  const HomeView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/HomeView';

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeBanner(),
            const SizedBox(height: 20),
            CategoryCard(
              title: 'Learning',
              svgName: 'learning.svg',
              onTap: () {},
            ),
            CategoryCard(
              title: 'Useful Resources',
              svgName: 'useful-resources.svg',
              onTap: () {},
            ),
            CategoryCard(
              title: 'Fun Zone',
              svgName: 'fun-zone.svg',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

/// Category Card
class CategoryCard extends StatelessWidget {
  /// Category Card Constructor
  const CategoryCard({
    Key? key,
    required this.title,
    required this.svgName,
    required this.onTap,
  }) : super(key: key);

  /// Card Title
  final String title;

  /// Svg Illustration Name
  final String svgName;

  /// OnTap Void Callback
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: primaryColor.withOpacity(0.5),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 28.0, top: 0, right: 28, bottom: 15),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          shadowColor: primaryColor,
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/$svgName',
                  fit: BoxFit.cover,
                  height: 50,
                ),
                const SizedBox(width: 15),
                Text(
                  title,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Home Banner with Illustration
class HomeBanner extends StatelessWidget {
  /// Home Banner with Illustration
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35),
      height: 328,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          const Text(
            'Zena Tamkin',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
          const SizedBox(height: 20),
          SvgPicture.asset(
            'assets/svg/home-banner-illustration.svg',
          ),
        ],
      ),
    );
  }
}
