import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zena_tamkin/config/colors.dart';

/// Home View of the App
class HomeView extends StatefulWidget {
  /// Home View Constructor
  const HomeView({Key? key}) : super(key: key);

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
            Card(
              child: ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/home-banner-illustration.svg',
                  fit: BoxFit.cover,
                  width: 50,
                ),
                title: const Text(
                  'Learning',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
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
      color: primaryColor,
      child: Column(
        children: [
          const Text(
            'Zena Tamkin',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
          const SizedBox(height: 20),
          SvgPicture.asset(
            'assets/svg/home-banner-illustration.svg',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
