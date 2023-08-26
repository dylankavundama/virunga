import 'package:flutter/material.dart';
import 'package:virunga/screen/model/video.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:virunga/screen/WIDGET/videoWidget.dart';

class DislayVideoPage extends StatefulWidget {
  DislayVideoPage({required this.video, Key? key}) : super(key: key);
  final String video;

  @override
  State<DislayVideoPage> createState() => _DislayVideoPageState();
}

class _DislayVideoPageState extends State<DislayVideoPage> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    String url = widget.video;
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags:
            const YoutubePlayerFlags(mute: false, loop: false, autoPlay: true));
    videoList.shuffle();
  }

  @override
  void deactivate() {
    controller.pause();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: screenHeight * 0.4,
              child: YoutubePlayer(
                controller: controller,
                showVideoProgressIndicator: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: List.generate(
                videoList.length,
                (index) => GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DislayVideoPage(
                        video: videoList[index].video,
                      );
                    }));
                  },
                  child: PostVideoWidget(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    image: videoList[index].img,
                    titre: videoList[index].titre,
            
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
