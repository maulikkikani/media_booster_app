import 'package:flutter/material.dart';
import 'package:media_booster_app_code/Models/VideoPlayermodel.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoPlayer_Provider extends ChangeNotifier {
  VideoPlayer_Model v1 = VideoPlayer_Model();

  AddVideo(String path) async {
    v1.videoPlayerController = VideoPlayerController.asset("${path}");

    await v1.videoPlayerController!.initialize();

    v1.chewieController = ChewieController(
      videoPlayerController: v1.videoPlayerController!,
      autoPlay: true,
      aspectRatio: 16 / 9,
    );
    notifyListeners();
  }

  StopVideo() async {
    await v1.videoPlayerController!.pause();
    notifyListeners();
  }
}
