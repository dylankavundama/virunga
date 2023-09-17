import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:virunga/bloc/bloc_event.dart';
import 'package:virunga/bloc/post/post_bloc.dart';
import 'package:virunga/screen/welcome/Detail.dart';

import '../model/post.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  final PostBloc _blocPost = PostBloc();

  @override
  void initState() {
    super.initState();
    _blocPost.add(BlocEventFetch());
  }

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white12,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  AppbarW(screenH: screenH, screenW: screenW),
              const SizedBox(
                height: 10,
              ),
              const TitreAppW(),
              const SizedBox(
                height: 10,
              ),
              Column(
                  children: posts.map((e) {
                return ListPost(screenH: screenH, screenW: screenW, post: e);
              }).toList()),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Supabase.instance.client.from('Post').insert({
              'image': 'kabasha',
              'titre': 'Match kabasha vs dauphin',
              'description': 'Stade de volcans'
            }).then((value) {
              debugPrint(value.toString());
            });
          },
          child: const Icon(Icons.add)),
    );
  }
}

class ListPost extends StatelessWidget {
  const ListPost({
    Key? key,
    required this.screenH,
    required this.screenW,
    required this.post,
  }) : super(key: key);

  final double screenH;
  final double screenW;
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) {
            //  return SecondPage(image: post.image);
            return Detail(
              image: post.image,
              titre: post.titre,
              desc: post.descri,
            );
          })));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textAlign: TextAlign.justify,
              '${post.titre}',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),

            Padding(padding: EdgeInsets.only(top: 5)),
            Text(
              "${post.descri}",
              textAlign: TextAlign.justify,
              maxLines: 2,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
            const Text(
              'Lire plus...',
              textAlign: TextAlign.justify,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: screenH * 0.01,
            ),

            Image.asset(
              post.image,
              height: screenH * 0.3,
              width: screenW,
              fit: BoxFit.cover,
            ),
            //aad bouton shared
            Divider(
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class TitreAppW extends StatelessWidget {
  const TitreAppW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'asset/logo.jpg',
            width: screenW * 0.16,
            fit: BoxFit.cover,
          ),
          const Center(
            child: Text(
              "Daring Club Virunga",
              style: TextStyle(
                  fontFamily: 'roboto',
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Text(
            "News",
            style: TextStyle(
                fontFamily: 'roboto',
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
