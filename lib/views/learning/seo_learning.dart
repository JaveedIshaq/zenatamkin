import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zena_tamkin/app_viewmodel/app_viewmodel.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';
import 'package:zena_tamkin/views/learning/components/lectures_list.dart';

/// Web Development Learning
class SEOLearning extends StatelessWidget {
  ///
  const SEOLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppViewModel>.reactive(
      viewModelBuilder: () => AppViewModel(),
      onModelReady: (AppViewModel model) =>
          model.requestSeoYTvideos(context: context),
      disposeViewModel: false,
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ScreenBanner(
                titleText: 'Search Engine Optimization',
                svgName: 'seo.svg',
              ),
              const SizedBox(height: 20),
              Center(
                  child: model.isBusy
                      ? const LoadingIndicator()
                      : LecturesList(list: model.seoYtlist!.data!)),
            ],
          ),
        ),
      ),
    );
  }
}
