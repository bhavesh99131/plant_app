import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skygreen/screens/homepage.dart';
// import 'package:glass/glass.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/splash_back.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset("assets/images/skygreen_logo.png"),
            ),
            //.asGlass(clipBorderRadius: BorderRadius.circular(20),blurX: 1,blurY: 1,enabled: false),
          ],
        ),
      ),
    );
  }
}
