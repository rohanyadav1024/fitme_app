import 'package:fitme/home/home_view.dart';
import 'package:fitme/reusable/widgets/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.maxFinite,
      alignment: Alignment.topCenter,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.all(18),
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'FitKit',
                  style: TextStyle(
                    color: Color(0xFFDF3F3F),
                    fontSize: 48,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Image.asset('assets/images/getstarted.jpg'),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(60, 12, 60, 0),
                  child: Text(
                    'Thanks for taking your time . Now this is the fun part, let’s explore the app.',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Bottom_Button(
                    text: 'Get Started',
                    activity: () {Get.to(() => HomeScreen());},
                  ),
                ),
              ]),
        )),
      ),
    );
  }
}
