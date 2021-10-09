import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stacked/stacked.dart';
import 'package:zena_tamkin/app_viewmodel/app_viewmodel.dart';
import 'package:zena_tamkin/config/colors.dart';
import 'package:zena_tamkin/helpers/helper_functions.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';

/// Qoute Screen
class BrainFoodQuote extends StatelessWidget {
  ///
  BrainFoodQuote({Key? key}) : super(key: key);

  ///
  final GlobalKey _quoteContainer = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppViewModel>.reactive(
      viewModelBuilder: () => AppViewModel(),
      onModelReady: (AppViewModel model) => model.requestRandomQuote(),
      disposeViewModel: false,
      builder: (context, model, child) => Scaffold(
          backgroundColor: primaryColor,
          body: Stack(
            children: [
              Positioned(
                top: 30,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white38,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Center(
                child: RepaintBoundary(
                  key: _quoteContainer,
                  child: model.isBusy
                      ? const LoadingIndicator(color: Colors.white38)
                      : Container(
                          height: MediaQuery.of(context).size.height * 0.8,
                          color: primaryColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 50),
                            child: Column(
                              children: [
                                Flexible(
                                  child: Center(
                                    child: Text(
                                      model.quote!.data!.content,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: IconButton(
                  icon: const Icon(
                    Icons.share,
                    color: Colors.white38,
                  ),
                  onPressed: () {
                    captureSocialPng(
                      context: context,
                      previewContainer: _quoteContainer,
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
