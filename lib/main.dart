import 'package:fitme/onboarding/age_view.dart';
import 'package:fitme/onboarding/getstarted.dart';
import 'package:fitme/onboarding/views/gender_view.dart';
import 'package:fitme/onboarding/views/height_view.dart';
import 'package:fitme/onboarding/views/splashscreen_view.dart';
import 'package:fitme/onboarding/weight_view.dart';
import 'package:fitme/resources/app_routes.dart';
import 'package:fitme/trackers/health_calci/views/blood_sugar_view.dart';
import 'package:fitme/trackers/health_calci/views/bmr_view.dart';
import 'package:fitme/trackers/health_calci/views/body_mass_index_view.dart';
import 'package:fitme/trackers/health_calci/views/bp_view.dart';
import 'package:fitme/trackers/health_calci/views/water_intake_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
        getPages: [
          GetPage(
            name: AppRoutes.genderPage,
            page: () => GenderPage(),
          ),
          GetPage(
            name: AppRoutes.agePage,
            page: () => AgePage(),
          ),
          GetPage(
            name: AppRoutes.weightPage,
            page: () => WeightPage(),
          ),
          GetPage(
            name: AppRoutes.heightPage,
            page: () => HeightPage(),
          ),


          GetPage(
            name: AppRoutes.bmr,
            page: () => BMRview(),
          ),
          GetPage(
            name: AppRoutes.bloodsugar,
            page: () => BloodSugarView(),
          ),
          GetPage(
            name: AppRoutes.bmi,
            page: () => BMI(),
          ),
          GetPage(
            name: AppRoutes.bp,
            page: () => BPView(),
          ),
          GetPage(
            name: AppRoutes.waterintake,
            page: () => WaterIntakeView(),
          ),
        ]);
  }
}
