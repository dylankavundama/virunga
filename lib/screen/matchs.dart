import 'package:flutter/material.dart';
import 'package:virunga/screen/model/matchAvenir.dart';
import 'model/matchJouer.dart';

class Match extends StatefulWidget {
  @override
  State<Match> createState() => _MatchState();
}

class _MatchState extends State<Match> {
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
              Text("Match Jouer"),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: ListMatchJouer.map((e) {
                  return MatchJouer(MatchJ: e);
                }).toList(),
              ),
              Text("Prochain Match"),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: ListMatchAvenir.map((e) {
                  return MatchAvenir(MatchAv: e);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MatchJouer extends StatelessWidget {
  const MatchJouer({
    required this.MatchJ,
    super.key,
  });
  final MatchJ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      padding: EdgeInsets.all(15),
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
            backgroundImage: AssetImage(MatchJ.img1),
            radius: 19,
          ),
          Expanded(
            child: Text(
              MatchJ.club1,
              style: TextStyle(fontSize: 14),
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
              style: TextStyle(fontSize: 14),
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage(MatchJ.img2),
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

  final MatchAv;

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
                backgroundImage: AssetImage(MatchAv.img1),
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
                backgroundImage: AssetImage(MatchAv.img2),
                radius: 19,
              ),
            ],
          ),
          Text(MatchAv.date)
        ],
      ),
    );
  }
}
