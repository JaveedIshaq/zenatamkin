import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zena_tamkin/config/colors.dart';

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
