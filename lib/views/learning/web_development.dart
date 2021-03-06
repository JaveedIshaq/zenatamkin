import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:zena_tamkin/config/colors.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/helpers/helper_functions.dart';
import 'package:zena_tamkin/services/api_service.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';

/// Web Development Learning
class WebDevelopmentLearning extends StatelessWidget {
  ///
  WebDevelopmentLearning({Key? key, required this.file, required this.title})
      : super(key: key);

  /// Markdown File
  final String file;

  /// Page Title
  final String title;

  final ApiService? _apiService = locator<ApiService>();
  final ScrollController _controller = ScrollController();

  final double _blockSpacing = 8.0;

  final WrapAlignment _wrapAlignment = WrapAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ScreenBanner(
              showImgTitle: (title == 'WebDevelopment Learning') ? true : false,
              titleText: title,
              svgName: 'web-development.svg',
            ),
            const SizedBox(height: 20),
            FutureBuilder(
              future: _apiService!.getTechtonichaCurricullamData(file: file),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Markdown(
                    controller: _controller,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    data: snapshot.data as String,
                    imageDirectory: 'https://raw.githubusercontent.com',
                    onTapLink: (String text, String? href, String title) {
                      handleTapInmarkDown(
                        text: text,
                        href: href,
                        title: title,
                        controller: _controller,
                      );
                    },
                  );
                }
                return const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(primaryColor));
              },
            ),
          ],
        ),
      ),
    );
  }
}

///
extension WrapAlignmentExtension on WrapAlignment {
  ///
  String get name => describeEnum(this);

  ///
  String get displayTitle => () {
        switch (this) {
          case WrapAlignment.center:
            return 'Center';
          case WrapAlignment.end:
            return 'End';
          case WrapAlignment.spaceAround:
            return 'Space Around';
          case WrapAlignment.spaceBetween:
            return 'Space Between';
          case WrapAlignment.spaceEvenly:
            return 'Space Evenly';
          case WrapAlignment.start:
            return 'Start';
        }
      }();
}
