import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zena_tamkin/app_viewmodel/app_viewmodel.dart';
import 'package:zena_tamkin/config/colors.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';
import 'package:zena_tamkin/helpers/helper_functions.dart';

/// RandomReecipe
class RandomReecipe extends StatelessWidget {
  ///
  const RandomReecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppViewModel>.reactive(
      viewModelBuilder: () => AppViewModel(),
      onModelReady: (AppViewModel model) => model.requestRecipe(),
      disposeViewModel: false,
      builder: (context, model, child) => Scaffold(
          body: SingleChildScrollView(
        child: model.isBusy
            ? const LoadingIndicator(color: Colors.white38)
            : Column(
                children: [
                  Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl: model.foodRecipe!.data!.strMealThumb,
                        imageBuilder: (context, imageProvider) => Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.fill,
                            ),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                        ),
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      const PopButton(),
                      Positioned(
                        top: 40,
                        right: 10,
                        child: InkWell(
                          onTap: () {
                            openLaunchURL(
                                url: model.foodRecipe!.data!.strYoutube);
                          },
                          child: Container(
                            width: 160,
                            height: 25,
                            decoration: BoxDecoration(
                              color: primaryGreenColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Text(
                                'Watch on YouTube',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    model.foodRecipe!.data!.strMeal,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                            color: primaryPinkColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              model.foodRecipe!.data!.strArea,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                            color: primaryPinkColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              model.foodRecipe!.data!.strCategory,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 8.0, right: 20, bottom: 30),
                    child: Text(
                      model.foodRecipe!.data!.strInstructions,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ],
              ),
      )),
    );
  }
}

///
class PopButton extends StatelessWidget {
  ///
  const PopButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
