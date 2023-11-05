import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:virunga/bloc/bloc_event.dart';
import 'package:virunga/bloc/block_state.dart';
import 'package:virunga/bloc/post/post_bloc.dart';
import 'package:virunga/modal/paiement.dart';
import 'package:virunga/screen/WIDGET/post_shimmer.dart';
import 'package:virunga/screen/welcome/Detail.dart';
import 'package:flutter_svg/svg.dart';
import 'package:virunga/utils/UtilsColot.dart';

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
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const TitreAppW(),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder(
                      bloc: _blocPost,
                      builder: (context, state) {
                        if (state is BlocStateUninitialized ||
                            state is BlocStateLoading) {
                          return Column(
                            children:
                                List.generate(5, (index) => postShimmer()),
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
                                      fontSize: 20,
                                      fontWeight: FontWeight.w100),
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
                                    "Erreur",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w100),
                                  )
                                ],
                              ),
                            );
                          } else {
                            return Column(
                                children: List.generate(
                                    state.data.length,
                                    (index) => ListPost(
                                        screenH: screenH,
                                        screenW: screenW,
                                        post: state.data[index])));
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
                      }),
                  // ),
                ])),
      ),
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
              image: post.image!,
              titre: post.titre!,
              desc: post.description!,
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
              "${post.description}",
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

            Image.network(
              post.image!,
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

class TitreAppW extends StatefulWidget {
  const TitreAppW({
    Key? key,
  }) : super(key: key);

  @override
  State<TitreAppW> createState() => _TitreAppWState();
}

class _TitreAppWState extends State<TitreAppW> {
  @override
  late TextEditingController _controller = TextEditingController();
  late TextEditingController montant = TextEditingController();
  String name = '';
  void inistate() {
    super.initState();
    _controller = TextEditingController();
    montant = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    montant.dispose();
    super.dispose();
  }

  Future<String?> openDia() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('Entrer un montant'),
            content: TextField(
              autofocus: true,
              maxLength: 8,
              decoration: const InputDecoration(
                hintText: ("en Fc"),
              ),
              controller: _controller,
            ),
            actions: [
              TextButton(
                onPressed: submit,
                child: const Text('Envoyer'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Quitter"),
              ),
            ],
          ));

  void submit() {
    Navigator.of(context).pop(_controller.text);
  }

  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'asset/logo.jpg',
                width: screenW * 0.10,
                fit: BoxFit.cover,
              ),
              TextButton(
                  onPressed: () => {
                        showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return const Center(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      ModalPaiement()
                                    ],
                                  ),
                                ),
                              );
                            })
                      },
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ))),
                  child: const Text(
                    "Contribution",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ))
            ],
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
          // Shimmer.fromColors(
          //   baseColor: Colors.green,
          //   highlightColor: Color.fromRGBO(255, 255, 255, 1),
          //   child: TextButton(
          //     onPressed: () async {
          //       final name = await openDia();
          //       if (name == null || name.isEmpty) return;

          //       setState(() => this.name = name);
          //     },
          //   child: const Text(
          //       "FAITE UNE CONTRIBUTION",
          //       style: TextStyle(
          //           fontFamily: 'roboto',
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
