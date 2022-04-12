 import 'package:flutter/material.dart';
import 'package:mian/splash_page.dart';

void main()=> runApp(MainApp());
class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Great Tafseer",
      home: SplashPage(),
    );
  }
}
