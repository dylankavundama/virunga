import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:virunga/bloc/bloc_event.dart';
import 'package:virunga/bloc/block_state.dart';
import 'package:virunga/bloc/video/video_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:virunga/screen/WIDGET/post_shimmer.dart';
import 'package:virunga/screen/WIDGET/videoWidget.dart';
import 'package:virunga/screen/WIDGET/video_shimmer.dart';
import 'package:virunga/screen/videos/displayvideo.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  List<dynamic> _videos = [];
  final VideoBloc _bloc = VideoBloc();

  @override
  void initState() {
    super.initState();
    _bloc.add(BlocEventFetch());
    allVideo();
  }

  Future<void> allVideo() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: SingleChildScrollView(
            child: BlocBuilder(
                bloc: _bloc,
                builder: (context, state) {
                  if (state is BlocStateUninitialized ||
                      state is BlocStateLoading) {
                    return Column(
                      children: List.generate(4, (index) => videoShimmer()),
                    );
                  }
                  if (state is BlocStateError) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'asset/images/error_server.svg',
                            height: 150.0,
                            width: 150.0,
                            alignment: Alignment.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Erreur survenue",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                    );
                  }
                  if (state is BlocStateLoaded) {
                    if (state.data == null || state.data.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'asset/images/empty.svg',
                              height: 150.0,
                              width: 150.0,
                              alignment: Alignment.center,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Aucun médicament enregistré",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w100),
                            )
                          ],
                        ),
                      );
                    } else {
                      return Column(
                        children: List.generate(
                          state.data.length,
                          (index) => GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DislayVideoPage(
                                  video: state.data[index].video,
                                );
                              }));
                            },
                            child: PostVideoWidget(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              image: state.data[index].img,
                              titre: state.data[index].titre,
                            ),
                          ),
                        ),
                      );
                    }
                  }
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'asset/images/error_server.svg',
                          height: 150.0,
                          width: 150.0,
                          alignment: Alignment.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Erreur survenue",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  );
                })),
      ),
    );
  }
}
