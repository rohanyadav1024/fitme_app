import 'dart:ffi';

import 'package:fitme/reusable/widgets/reusable_widgets.dart';
import 'package:fitme/trackers/health_calci/calci_vm/bp_calci_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../resources/AppDimensions.dart';
import '../../../resources/app_colors.dart';

class BPView extends StatelessWidget {
  BPView({super.key});

  BPcontroller controller = Get.put(BPcontroller());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    void _showdialoguebox() {
      BloodPressureCategory obj = categorizedBloodPressure(
          calculateBloodPressure(controller.sys!, controller.dias!));
      showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.white,
              contentPadding: const EdgeInsets.all(0.0),
              content: Container( padding: EdgeInsets.all(22),
                height: height * .4,
                width: width * 0.8,
                decoration: BoxDecoration(
                    // color: Colors.black,
                    border: Border.all(
                      color: Colors.amber,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15.0)),
                // color: Colors.amber.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${obj.name}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      '${obj.description}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    }

    return Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  // height: height * 0.6,
                  width: width * 0.9,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x990000000),
                            blurRadius: 25,
                            spreadRadius: 0)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            radius: 50,
                            child: ImageIcon(
                              AssetImage('assets/icons/stethoscope.png'),
                              size: 40,
                            )),
                      ),
                      Text(
                        'Blood Pressure Calculator',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomPlaceholderWidget(
                          widget: TextFormField(
                            controller: controller.syscontroller,
                            textCapitalization: TextCapitalization.words,
                            style: const TextStyle(
                              color: AppColors.SURFSIDE,
                              fontSize: Dimensions.text_field,
                              letterSpacing: 0,
                            ),
                            decoration: const InputDecoration(
                              filled: true,
                              hintText: 'Enter systolic Pressure mmHg',
                              fillColor: Colors.transparent,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              // controller.formkey.currentState.save();
                              return null;
                            },
                            // onSaved: (String? newValue) {
                            //   cnt.sys = int.parse(newValue!);
                            // },
                          ),
                          w: width * 0.8),
                      CustomPlaceholderWidget(
                          widget: TextFormField(
                            controller: controller.diascontroller,
                            textCapitalization: TextCapitalization.words,
                            style: const TextStyle(
                              color: AppColors.SURFSIDE,
                              fontSize: Dimensions.text_field,
                              letterSpacing: 0,
                            ),
                            decoration: const InputDecoration(
                              filled: true,
                              hintText: 'Enter diastolic Pressure mmHg',
                              fillColor: Colors.transparent,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              // _formkey.currentState!.save();
                              return null;
                            },
                            // onSaved: (String? newValue) {}
                            // setState(() {
                            //   obj.name = newValue!;
                            // });
                          ),
                          w: width * 0.8),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Bottom_Button(
                text: 'Continue',
                color: AppColors.BASE_Mud,
                activity: () {
                  controller.submitForm();
                  _showdialoguebox();
                },
              )
            ],
          )),
        ));
  }
}
