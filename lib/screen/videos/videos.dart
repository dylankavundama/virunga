import 'package:flutter/material.dart';
import 'package:virunga/screen/WIDGET/videoWidget.dart';
import 'package:virunga/screen/model/video.dart';

import 'displayvideo.dart';
import 'package:url_launcher/url_launcher.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  List<dynamic> _videos = [];

  @override
  void initState() {
    super.initState();
    allVideo();
  }

  Future<void> allVideo() async {

    setState(() {
  
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
  
      body: Padding(
        padding: const EdgeInsets.only(top: 25 ),
        child: SingleChildScrollView(
          child: Column(
            children: [
 
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
