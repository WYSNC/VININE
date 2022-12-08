import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AssetPlayerWidget extends StatefulWidget {
  @override
  _AssetPlayerWidgetState createState() => _AssetPlayerWidgetState();
}

class _AssetPlayerWidgetState extends State<AssetPlayerWidget> {

  late VideoPlayerController controller;
  
  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset('assets/videos/background.mp4')
    ..addListener(() => setState(() {}))
    ..setLooping(true)
    ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.setVolume(0);
    return VideoPlayerWidget(controller: controller);
  }
}

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      controller != null && controller.value.isInitialized
          ? Container(
              height: 700,
              width: 400,
              alignment: Alignment.topCenter,
              child: buildVideo(),
            )
          : const SizedBox(
              height: 100,
              child: Center(child: CircularProgressIndicator(),),
            );

  Widget buildVideo() => buildVideoPlayer();

  Widget buildVideoPlayer() => AspectRatio(
    aspectRatio: 9.0/10.0,//controller.value.aspectRatio,
    child: VideoPlayer(controller),
  );
}