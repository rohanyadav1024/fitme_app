import 'dart:ffi';

import 'package:fitme/reusable/widgets/reusable_widgets.dart';
import 'package:fitme/trackers/dashboard/dashboard_view.dart';
import 'package:fitme/trackers/health_calci/views/calci_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      // height: height,
      width: width,
      alignment: Alignment.topCenter,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.all(18),
          width: width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/yogagirl.png',
                      width: width,
                    ),
                    Positioned(
                      right: 20,
                      child: Text(
                        'FitKit',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => DashBoardPage());
                      },
                      child: Container(
                        height: width * 0.4,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: Color(
                              0xFF3F3C3D,
                            ),
                            borderRadius: BorderRadius.circular(22)),
                        padding: EdgeInsetsDirectional.all(12),
                        child: Column(children: [
                          Text(
                            'VIEW DASHBOARD',
                            maxLines: 2,
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ImageIcon(
                              AssetImage(
                                'assets/icons/dashboard.png',
                              ),
                              color: Color(0xFFE8E5E2),
                              size: 40,
                            ),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  // height: height * 0.4,
                  child: ListView(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => CalciGridScreen());
                        },
                        child: Container(
                          height: height * 0.17,
                          width: width,
                          decoration: BoxDecoration(
                              color: Color(
                                0xFFF4922E,
                              ),
                              borderRadius: BorderRadius.circular(22)),
                          padding: EdgeInsetsDirectional.all(12),
                          child: Column(children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: ImageIcon(
                                    AssetImage(
                                      'assets/icons/health_calci.png',
                                    ),
                                    color: Color(0xFFE8E5E2),
                                    size: 40,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Health Calculator',
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Text(
                                        'Check your health with personalized health calculator.',
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: height * 0.17,
                        width: width,
                        decoration: BoxDecoration(
                            color: Color(
                              0xFF5321A4,
                            ),
                            borderRadius: BorderRadius.circular(22)),
                        padding: EdgeInsetsDirectional.all(12),
                        child: Column(children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: ImageIcon(
                                  AssetImage(
                                    'assets/icons/drink-water.png',
                                  ),
                                  color: Color(0xFFE8E5E2),
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'WATER CONSUPTION',
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      'Set reminders to track daily medication and water consumption.',
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: height * 0.17,
                        width: width,
                        decoration: BoxDecoration(
                            color: Color(
                              0xFF741046,
                            ),
                            borderRadius: BorderRadius.circular(22)),
                        padding: EdgeInsetsDirectional.all(12),
                        child: Column(children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: ImageIcon(
                                  AssetImage(
                                    'assets/icons/dashboard.png',
                                  ),
                                  color: Color(0xFFE8E5E2),
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'WORKOUT',
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      'Workouts to level up your fitness everyday.',
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
              ]),
        )),
      ),
    );
  }
}
