import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zena_tamkin/config/colors.dart';

/// Intro Screen Content
class IntroContent extends StatelessWidget {
  /// constructor
  const IntroContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);

  /// Title Text and Image name
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        const Text(
          'Zena Tamkin',
          style: TextStyle(
            fontSize: 30,
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
        const Spacer(flex: 2),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            image!,
            height: 265,
            width: 235,
          ),
        ),
      ],
    );
  }
}
