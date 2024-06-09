import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  final String youtubeUrl;
  final String googleDriveUrl;
  final String description;
  final bool isYouTube;

  const VideoScreen({
    Key? key,
    required this.youtubeUrl,
    required this.googleDriveUrl,
    required this.description,
    required this.isYouTube,
  }) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _youtubeController;
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    if (widget.isYouTube) {
      _youtubeController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.youtubeUrl)!,
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );
    } else {
      _videoPlayerController = VideoPlayerController.network(widget.googleDriveUrl)
        ..initialize().then((_) {
          setState(() {});
        });
    }
  }

  @override
  void dispose() {
    if (widget.isYouTube) {
      _youtubeController.dispose();
    } else {
      _videoPlayerController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter Video Player'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
              child: widget.isYouTube
                  ? YoutubePlayer(
                controller: _youtubeController,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.red,
              )
                  : _videoPlayerController.value.isInitialized
                  ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              )
                  : const Center(child: CircularProgressIndicator()),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Video Description',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                widget.description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
      !widget.isYouTube && _videoPlayerController.value.isInitialized
          ? FloatingActionButton(
        onPressed: () {
          setState(() {
            _videoPlayerController.value.isPlaying
                ? _videoPlayerController.pause()
                : _videoPlayerController.play();
          });
        },
        child: Icon(
          _videoPlayerController.value.isPlaying
              ? Icons.pause
              : Icons.play_arrow,
        ),
      )
          : null,
    );
  }
}
