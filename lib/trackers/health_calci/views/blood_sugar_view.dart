import 'package:fitme/reusable/widgets/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../resources/AppColors.dart';
import '../../../resources/AppDimensions.dart';
import '../../../resources/app_colors.dart';

class BloodSugarView extends StatelessWidget {
  BloodSugarView({super.key});

  GlobalKey _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
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
                              textCapitalization: TextCapitalization.words,
                              style: const TextStyle(
                                color: AppColors.SURFSIDE,
                                fontSize: Dimensions.text_field,
                                letterSpacing: 0,
                              ),
                              decoration: const InputDecoration(
                                filled: true,
                                hintText: 'Enter blood sugar value mg/dl',
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
                              onSaved: (String? newValue) {}
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
                activity: () {},
              )
            ],
          )),
        ));
  }
}
