import 'dart:async';
import 'package:flutter/material.dart';
import 'package:virunga/screen/WIDGET/nav1.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), page);
  }

  page() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const navBar();
    }));
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.2,
            ),
            Center(
              child: Image.asset('asset/logo.webp'),
            ),
  Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Text("Uni,Fort et Impattable"),
  ),
            const Spacer(),
 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              
                CircleAvatar(
                  child: Image.asset('asset/sp/a.png'),
                  backgroundColor: Colors.white,
                  radius: 16,
                ),
                const Padding(padding: EdgeInsets.only(left: 10)),
                CircleAvatar(
                  child: Image.asset('asset/sp/b.jpg'),
                  backgroundColor: Colors.white,
                  radius: 16,
                ),
            
                const Padding(padding: EdgeInsets.only(left: 10)),
                CircleAvatar(
                  child: Image.asset('asset/sp/d.jpg'),
                  backgroundColor: Colors.white,
                  radius: 16,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
