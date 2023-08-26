import 'package:flutter/material.dart';
import 'package:virunga/list.dart';
import 'package:virunga/screen/about.dart';

import 'package:virunga/screen/matchs.dart';
import 'package:virunga/screen/videos/videos.dart';
import 'package:virunga/screen/welcome/home.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int currentindex = 0;
  List<Widget> screen = [const Home(), Match(), const VideosPage(), about ()];
  void _listbotton(int index) {
    currentindex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomSheet: screen[currentindex],
      bottomNavigationBar: BottomNavigationBar(

      //  backgroundColor: Color.fromARGB(255, 131, 227, 134),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          selectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.house_outlined,
                  size: 19,
                  color: Colors.black,
                ),
                label: 'Acceuil',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.sports_soccer_outlined,
                  size: 19,
                  color: Colors.black,
                ),
                label: 'Matches',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.movie_outlined,
                  size: 19,
                  color: Colors.black,
                ),
                label: 'Videos',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.info_outline_rounded,
                  size: 19,
                  color: Colors.black,
                ),
                label: 'A-propos',
                backgroundColor: Colors.white),
          ]),
    );
  }
}
