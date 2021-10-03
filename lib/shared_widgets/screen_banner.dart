import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zena_tamkin/config/colors.dart';

/// Home Banner with Illustration
class ScreenBanner extends StatelessWidget {
  /// Home Banner with Illustration
  const ScreenBanner({
    Key? key,
    required this.titleText,
    required this.svgName,
  }) : super(key: key);

  /// titleText
  final String titleText;

  /// svgName
  final String svgName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35),
      height: 228,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: primaryColor,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/$svgName',
                  height: 140,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 20),
                Text(
                  titleText,
                  style: const TextStyle(fontSize: 22, color: primaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
