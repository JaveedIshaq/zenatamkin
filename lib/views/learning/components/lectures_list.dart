import 'package:flutter/material.dart';
import 'package:zena_tamkin/models/youtube_video.dart';
import 'package:zena_tamkin/views/learning/components/video_item.dart';

///
class LecturesList extends StatelessWidget {
  ///
  const LecturesList({Key? key, required this.list}) : super(key: key);

  /// Youtube Videos List
  final List<YoutubeVideo> list;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return VideoItem(video: list[index]);
        },
      ),
    );
  }
}
