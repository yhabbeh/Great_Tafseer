import 'package:flutter/material.dart';

import 'home_Page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Navegator() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePageGreat(),
        ));
  }

  @override
  void initState() {
    super.initState();
    Navegator();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Image(
      image: const AssetImage("assets/Default-Portrait~ipad.png"),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.fill,
    );
  }
}
