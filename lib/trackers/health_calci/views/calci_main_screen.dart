import 'dart:ffi';

import 'package:fitme/resources/app_colors.dart';
import 'package:fitme/reusable/widgets/reusable_widgets.dart';
import 'package:fitme/trackers/dashboard/dashboard_view.dart';
import 'package:fitme/trackers/health_calci/views/blood_sugar_view.dart';
import 'package:fitme/trackers/health_calci/views/bmr_view.dart';
import 'package:fitme/trackers/health_calci/views/body_mass_index_view.dart';
import 'package:fitme/trackers/health_calci/views/bp_view.dart';
import 'package:fitme/trackers/health_calci/views/water_intake_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';

class CalciGridScreen extends StatelessWidget {
  CalciGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.SILTY),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                left: 10,
                top: 20,
                child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    widthFactor: 1,
                    child: Text(
                      'Health Calculator',
                      // Strings.PROFILE_SELECTION_MESSAGE,
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.BASE_Mud,
                        fontSize: MediaQuery.of(context).size.width * .1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.only(top: 18.0),
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: MediaQuery.of(context).size.width * 0.75,
                      // child:
                      //     GridView.count(
                      //         crossAxisCount: 2,
                      //         childAspectRatio: 1,
                      //         crossAxisSpacing: 25.0,
                      //         mainAxisSpacing: 25.0,
                      //         children: controller.calcis
                      //             .map((profile) => GestureDetector(
                      //                   onTap: () {
                      //                     Get.to(profile['onClicked']);
                      //                   },
                      //                   child: Material(
                      //                     elevation: 20.0,
                      //                     borderRadius: BorderRadius.circular(18.0),
                      //                     child: Container(
                      //                       padding: EdgeInsets.all(4.0),
                      //                       height:
                      //                           MediaQuery.of(context).size.width *
                      //                               .25,
                      //                       decoration: BoxDecoration(
                      //                           borderRadius:
                      //                               BorderRadius.circular(18.0),
                      //                           border: Border.all(
                      //                               color: DefinedColors.POMEGRENATE_2
                      //                                   .withOpacity(0.4),
                      //                               width: 2.0)),
                      //                       child: Column(
                      //                         mainAxisSize: MainAxisSize.min,
                      //                         mainAxisAlignment:
                      //                             MainAxisAlignment.center,
                      //                         children: [
                      //                           Container(
                      //                             height: MediaQuery.of(context)
                      //                                     .size
                      //                                     .width *
                      //                                 0.1,
                      //                             margin:
                      //                                 EdgeInsets.only(bottom: 5.0),
                      //                             child: Image.asset(profile['icon'],
                      //                                 // 'assets/icons/profile_selection/icon_${profileSelectionController.profiles.indexOf(profile) + 1}.png',
                      //                                 fit: BoxFit.contain),
                      //                           ),
                      //                           Text(
                      //                             profile['name'],
                      //                             textAlign: TextAlign.center,
                      //                             style: TextStyle(
                      //                                 color: DefinedColors
                      //                                     .POMEGRENATE_1),
                      //                           )
                      //                         ],
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ))
                      //             .toList())

                      child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => BloodSugarView());
                              },
                              child: Material(
                                elevation: 20.0,
                                borderRadius: BorderRadius.circular(18.0),
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  height:
                                      MediaQuery.of(context).size.width * .25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      border: Border.all(
                                          // color: DefinedColors.POMEGRENATE_2
                                          // .withOpacity(0.4),
                                          width: 2.0)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        margin: EdgeInsets.only(bottom: 5.0),
                                        // child: Image.asset(profile['icon'],
                                        // 'assets/icons/profile_selection/icon_${profileSelectionController.profiles.indexOf(profile) + 1}.png',
                                        // fit: BoxFit.contain),
                                      ),
                                      Text(
                                        'Blood Sugar level ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            // color: DefinedColors
                                            //     .POMEGRENATE_1
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => BPView());
                              },
                              child: Material(
                                elevation: 20.0,
                                borderRadius: BorderRadius.circular(18.0),
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  height:
                                      MediaQuery.of(context).size.width * .25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      border: Border.all(
                                          // color: DefinedColors.POMEGRENATE_2
                                          // .withOpacity(0.4),
                                          width: 2.0)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        margin: EdgeInsets.only(bottom: 5.0),
                                        // child: Image.asset(profile['icon'],
                                        // 'assets/icons/profile_selection/icon_${profileSelectionController.profiles.indexOf(profile) + 1}.png',
                                        // fit: BoxFit.contain),
                                      ),
                                      Text(
                                        'Blood Pressure',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            // color: DefinedColors
                                            //     .POMEGRENATE_1
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => BMRview());
                              },
                              child: Material(
                                elevation: 20.0,
                                borderRadius: BorderRadius.circular(18.0),
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  height:
                                      MediaQuery.of(context).size.width * .25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      border: Border.all(
                                          // color: DefinedColors.POMEGRENATE_2
                                          // .withOpacity(0.4),
                                          width: 2.0)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        margin: EdgeInsets.only(bottom: 5.0),
                                        // child: Image.asset(profile['icon'],
                                        // 'assets/icons/profile_selection/icon_${profileSelectionController.profiles.indexOf(profile) + 1}.png',
                                        // fit: BoxFit.contain),
                                      ),
                                      Text(
                                        'Basal Metbolic Rate',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            // color: DefinedColors
                                            //     .POMEGRENATE_1
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => BMI());
                              },
                              child: Material(
                                elevation: 20.0,
                                borderRadius: BorderRadius.circular(18.0),
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  height:
                                      MediaQuery.of(context).size.width * .25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      border: Border.all(
                                          // color: DefinedColors.POMEGRENATE_2
                                          // .withOpacity(0.4),
                                          width: 2.0)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        margin: EdgeInsets.only(bottom: 5.0),
                                        // child: Image.asset(profile['icon'],
                                        // 'assets/icons/profile_selection/icon_${profileSelectionController.profiles.indexOf(profile) + 1}.png',
                                        // fit: BoxFit.contain),
                                      ),
                                      Text(
                                        'Body Mass Index',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            // color: DefinedColors
                                            //     .POMEGRENATE_1
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => WaterIntakeView());
                              },
                              child: Material(
                                elevation: 20.0,
                                borderRadius: BorderRadius.circular(18.0),
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  height:
                                      MediaQuery.of(context).size.width * .25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      border: Border.all(
                                          // color: DefinedColors.POMEGRENATE_2
                                          // .withOpacity(0.4),
                                          width: 2.0)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        margin: EdgeInsets.only(bottom: 5.0),
                                        // child: Image.asset(profile['icon'],
                                        // 'assets/icons/profile_selection/icon_${profileSelectionController.profiles.indexOf(profile) + 1}.png',
                                        // fit: BoxFit.contain),
                                      ),
                                      Text(
                                        'Water Intake Level',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            // color: DefinedColors
                                            //     .POMEGRENATE_1
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
