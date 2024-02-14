import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:videosample/model.dart';
import 'package:videosample/reel_detail.dart';
import 'package:videosample/reels_side_action.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: reels.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(),
              child: Stack(
                children: [
                  // VideoPlayer(_controller),
                  Videos(url: reels[index]),
                  // Text(reels[index]),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                                flex: 15,
                                child: ReelDetail(
                                  reel: reels[index],
                                )),
                            Flexible(
                                flex: 2,
                                child: ReelSideAction(
                                  reel: reels[index],
                                )),
                          ])
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class Videos extends StatefulWidget {
  const Videos({super.key, required this.url});

  final Reel url;

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url.imgUrl))
      ..initialize().then((_) {
        // setState(() {});
        _controller.play();
        _controller.setLooping(true);
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 760,
          width: double.infinity,
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
