import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zena_tamkin/config/colors.dart';

/// Category Card
class SubCategoryCard extends StatelessWidget {
  /// Category Card Constructor
  const SubCategoryCard({
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
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        shadowColor: primaryColor,
        elevation: 10,
        child: SizedBox(
          width: 150,
          height: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/$svgName',
                fit: BoxFit.cover,
                height: 50,
              ),
              const SizedBox(height: 15),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
