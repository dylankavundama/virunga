import 'package:flutter/material.dart';
import 'package:virunga/screen/loading.dart';
import 'package:virunga/screen/videos/videos.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
               primarySwatch: Colors.green,
            ),
        home: Loading());
  }
}
