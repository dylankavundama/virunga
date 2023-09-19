import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:virunga/bloc/bloc_event.dart';
import 'package:virunga/bloc/block_state.dart';
import 'package:virunga/bloc/match/match_bloc.dart';
import 'package:virunga/screen/WIDGET/match_shimmer.dart';
import 'package:virunga/screen/model/matchAvenir.dart';
import 'package:flutter_svg/svg.dart';
import 'package:virunga/screen/model/matchJouer.dart';

class Match extends StatefulWidget {
  @override
  State<Match> createState() => _MatchState();
}

class _MatchState extends State<Match> {
  final MatchBloc _blocJouer = MatchBloc();
  final MatchBloc _blocAvenir = MatchBloc();

  @override
  void initState() {
    super.initState();
    _blocJouer.add(BlocEventFetch());
    _blocAvenir.add(BlocEventUnPlayedMatchFetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text("Match Jouer"),
              BlocBuilder(
                  bloc: _blocJouer,
                  builder: (context, state) {
                    if (state is BlocStateUninitialized ||
                        state is BlocStateLoading) {
                      return Column(
                        children: List.generate(3, (index) => matchShimmer()),
                      );
                    }
                    if (state is BlocStateError) {
                      debugPrint("============= IS ERROR ==============");
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SvgPicture.asset(
                                'asset/images/error_server.svg',
                                height: 90.0,
                                width: 90.0,
                                alignment: Alignment.center,
                              ),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                state.data.length,
                                (index) =>
                                    MatchJouerScreen(MatchJ: state.data[index]))
                            // state.data.map((e) {
                            //   return MatchJouer(MatchJ: e);
                            // }).toList(),
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
                  }),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   mainAxisSize: MainAxisSize.max,
              //   children: ListMatchJouer.map((e) {
              //     return MatchJouer(MatchJ: e);
              //   }).toList(),
              // ),
              Text("Prochain Match"),
              BlocBuilder(
                  bloc: _blocAvenir,
                  builder: (context, state) {
                    if (state is BlocStateUninitialized ||
                        state is BlocStateLoading) {
                      return Column(
                        children: List.generate(3, (index) => matchShimmer()),
                      );
                    }
                    if (state is BlocStateError) {
                      debugPrint("============= IS ERROR ==============");
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SvgPicture.asset(
                                'asset/images/error_server.svg',
                                height: 90.0,
                                width: 90.0,
                                alignment: Alignment.center,
                              ),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                state.data.length,
                                (index) =>
                                    MatchAvenir(MatchAv: state.data[index]))
                            // state.data.map((e) {
                            //   return MatchJouer(MatchJ: e);
                            // }).toList(),
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
                  }),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   mainAxisSize: MainAxisSize.max,
              //   children: ListMatchAvenir.map((e) {
              //     return MatchAvenir(MatchAv: e);
              //   }).toList(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class MatchJouerScreen extends StatelessWidget {
  const MatchJouerScreen({
    required this.MatchJ,
    super.key,
  });
  final MatchJ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      padding: const EdgeInsets.all(15),
      height: 80,
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(MatchJ.img1),
            radius: 19,
          ),
          Expanded(
            child: Text(
              MatchJ.club1,
              style: const TextStyle(fontSize: 14),
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            child: Text(MatchJ.score),
          ),
          Expanded(
            child: Text(
              MatchJ.club2,
              style: const TextStyle(fontSize: 14),
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(MatchJ.img2),
            radius: 19,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}

class MatchAvenir extends StatelessWidget {
  MatchAvenir({
    super.key,
    required this.MatchAv,
  });

  final MatchJouer MatchAv;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      padding: EdgeInsets.all(15),
      height: 85,
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: Colors.black.withOpacity(0.5),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(MatchAv.img1!),
                radius: 19,
              ),
              Expanded(
                child: Text(
                  MatchAv.club1,
                  style: TextStyle(fontSize: 14),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Text(
                'Vs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Expanded(
                child: Text(
                  MatchAv.club2,
                  style: TextStyle(fontSize: 14),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(MatchAv.img2!),
                radius: 19,
              ),
            ],
          ),
          Text(MatchAv.dateMatch)
        ],
      ),
    );
  }
}
