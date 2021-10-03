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
    this.showImgTitle = true,
  }) : super(key: key);

  /// titleText
  final String titleText;

  /// svgName
  final String svgName;

  /// showImgTitle
  final bool showImgTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35),
      height: showImgTitle ? 228 : 60,
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
          showImgTitle
              ? SizedBox(
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
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(fontSize: 22, color: primaryColor),
                      ),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
