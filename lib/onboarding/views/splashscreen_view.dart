
import 'dart:async';

import 'package:flutter/material.dart';

import '../../resources/app_images.dart';
import 'name_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color splashbg = Colors.white;

  void continueAnimation() {
    setState(() {
      if (splashbg == Colors.white) {
        splashbg = Colors.lightBlue;
      } else
        splashbg = Colors.white;
    });
    Timer(
      const Duration(milliseconds: 200),
      () => continueAnimation(),
    );
    // continueAnimation();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // continueAnimation();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const NamePage())));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        height: double.infinity,
        width: double.infinity,
        duration: const Duration(milliseconds: 300),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.splash)))

        // color: Color(0xFF080808),
       
           
          
        );
  }

  TextStyle DefaultTextStyle(double fontsize) {
    return TextStyle(color: Colors.white, fontSize: fontsize);
  }
}