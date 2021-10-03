import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/models/youtube_video.dart';
import 'package:zena_tamkin/views/learning/components/video_player.dart';

/// VideoPlayer
class VideoItem extends StatelessWidget {
  ///VideoPlayer
  VideoItem({Key? key, required this.video}) : super(key: key);

  /// Youutube Video Item
  final YoutubeVideo video;

  /// Navigation Service
  final NavigationService? _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _navigationService!.navigateToView(VideoPlayer(
          video: video,
        ));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: video.snippet!.thumbnail!.url!,
              imageBuilder: (context, imageProvider) => Container(
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 15,
              ),
              child: Text(
                video.snippet!.title!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
