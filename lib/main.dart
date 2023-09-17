import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:virunga/screen/loading.dart';
import 'package:virunga/screen/videos/videos.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://dzqsytjnmzrquenphorl.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR6cXN5dGpubXpycXVlbnBob3JsIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQ4NjE0MzcsImV4cCI6MjAxMDQzNzQzN30.GpypDS0AvonA9MiE0SC1PVpZA5Dc5I-Ix1A0C-KpjcU');
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
        home: const Loading());
  }
}
