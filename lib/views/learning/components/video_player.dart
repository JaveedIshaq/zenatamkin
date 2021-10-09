import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zena_tamkin/config/colors.dart';
import 'package:zena_tamkin/models/youtube_video.dart';

/// VideoPlayer
class VideoPlayer extends StatefulWidget {
  ///VideoPlayer
  const VideoPlayer({Key? key, required this.video}) : super(key: key);

  /// Youutube Video Item
  final YoutubeVideo video;

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.video.snippet!.resourceId!.videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
              onEnded: (data) {
                showDialog(
                    context: context,
                    builder: (context) {
                      Future.delayed(const Duration(seconds: 5), () {
                        Navigator.of(context).pop(true);
                      });
                      return AlertDialog(
                        title: Lottie.asset('assets/json/31574-awesome.json'),
                      );
                    });
              },
            ),
            builder: (context, player) {
              return Column(
                children: [
                  player,
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.video.snippet!.title!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.video.snippet!.description!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              );
            },
          ),
        ]),
      ),
    );
  }
}
