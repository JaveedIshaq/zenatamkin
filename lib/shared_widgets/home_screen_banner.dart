import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zena_tamkin/config/colors.dart';

/// Home Banner with Illustration
class HomeScreenBanner extends StatelessWidget {
  /// Home Banner with Illustration
  const HomeScreenBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35),
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
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          const SizedBox(height: 5),
          SvgPicture.asset(
            'assets/svg/home-banner-illustration.svg',
          ),
        ],
      ),
    );
  }
}
