import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: w,
                  child: const Text(
                    "Cette application a été conçue par les apprenants de la CFPI (Centre de Formation Professionnelle de l'ISIG) au programme de la programmation mobile mobule 1",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 20),
                  ),
                ),
              ),
            )
            //   )
            ,
            // Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: SizedBox(
            //     height: w * .4,
            //     child: const Text(
            //       "Cette application a été conçue par les apprenants de la CFPI (Centre de Formation Professionnelle de l'ISIG) au programme de la programmation mobile mobule 1",
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //           color: Color.fromARGB(255, 54, 54, 54),
            //           fontWeight: FontWeight.normal,
            //           fontSize: 16),
            //     ),
            //   ),
            // ),

            Center(child: Image.asset("asset/teams.png", width: w * .6)),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)),
                    child: const LineIcon(
                      LineIcons.userCog,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      "Participant : DYLAN KAVUNDAMA",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    child: const LineIcon(
                      LineIcons.userAstronaut,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      "Formateur : GAETAN ABIO BAMONGOYO",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    child: const LineIcon(
                      LineIcons.user,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      "Concepteur :PACIFIQUE BAYONGWA",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    launch('+243817675404');
                    // launchUrl('+243817675404',
                    //     mode: LaunchMode.externalApplication,
                    //     webOnlyWindowName: "",
                    //     webViewConfiguration: const WebViewConfiguration(
                    //         enableJavaScript: true,
                    //         enableDomStorage: true,
                    //         headers: {"Content-Type": "application/jso"}));
                  },
                  child: const ListTile(
                    title: Text('+243817675404',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    leading: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    launch('+243998874188');
                  },
                  child: const ListTile(
                    title: Text('+243998874188',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    leading: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
