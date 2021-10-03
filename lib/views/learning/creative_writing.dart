import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';
import 'package:zena_tamkin/views/learning/components/lectures_list.dart';
import 'package:zena_tamkin/views/learning/learning_viewmodel/learning_viewmodel.dart';

/// Web Development Learning
class CreativeWritingLearning extends StatelessWidget {
  ///
  const CreativeWritingLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LearningViewModel>.reactive(
      viewModelBuilder: () => LearningViewModel(),
      onModelReady: (LearningViewModel model) =>
          model.requestCWYTvideos(context: context),
      disposeViewModel: false,
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ScreenBanner(
                titleText: 'Creative Writing',
                svgName: 'creative-writing.svg',
              ),
              const SizedBox(height: 20),
              Center(
                  child: model.isBusy
                      ? const LoadingIndicator()
                      : LecturesList(list: model.cwYtlist!.data!)),
            ],
          ),
        ),
      ),
    );
  }
}
