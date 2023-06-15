import 'package:fitme/reusable/widgets/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../resources/AppColors.dart';
import '../../../resources/AppDimensions.dart';
import '../../../resources/app_colors.dart';

class BMRview extends StatelessWidget {
  BMRview({super.key});

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
                        'BMR Calculator',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      //textfields

                      // DropdownPlaceholder(w: width * 0.6,
                      //   parameter: 'meter',
                      //   widget: TextFormField(
                      //     textCapitalization: TextCapitalization.words,
                      //     style: const TextStyle(
                      //       color: AppColors.SURFSIDE,
                      //       fontFamily: 'comic',
                      //       fontSize: Dimensions.text_field,
                      //       letterSpacing: 0,
                      //     ),
                      //     decoration: const InputDecoration(
                      //       filled: true,
                      //       hintText: 'Enter height',
                      //       fillColor: Colors.transparent,
                      //       border: UnderlineInputBorder(
                      //         borderSide: BorderSide.none,
                      //       ),
                      //     ),
                      //     keyboardType: TextInputType.number,
                      //     validator: (value) {
                      //       if (value == null || value.isEmpty) {
                      //         return 'Please enter some text';
                      //       }
                      //       // _formkey.currentState!.save();
                      //       return null;
                      //     },
                      //     // onSaved: (String? newValue) =>
                      //     //     setState(() {
                      //     //       // metres
                      //     //       if (hint_height == 'metres') {
                      //     //         obj.height =
                      //     //             double.parse(newValue!);
                      //     //       }
                      //     //       // feet
                      //     //       else {
                      //     //         obj.height =
                      //     //             (double.parse(newValue!) * 0.305);
                      //     //       }
                      //     //     }
                      //   ),
                      //   dropdown: DropdownButton(
                      //     // value: hint_height,
                      //     items: <String>['metres', 'feet'].map((String value) {
                      //       return DropdownMenuItem<String>(
                      //         value: value,
                      //         child: Text(value),
                      //       );
                      //     }).toList(),
                      //     icon: const Icon(
                      //       Icons.keyboard_arrow_down_sharp,
                      //       color: AppColors.WHITE,
                      //       size: 25,
                      //     ),
                      //     onChanged: (String? value) {
                      //       // setState(() {
                      //       //   // hint_height = value!;
                      //       // }
                      //       // );
                      //     },
                      //   ),
                      // ),

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
                                hintText: 'Enter Age',
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
                          w: width * 0.6),
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
                                hintText: 'Enter Weight',
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
                          w: width * 0.6),
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
                                hintText: 'Enter Height',
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
                          w: width * 0.6),
                      SizedBox(
                        height: 20,
                      ),
                      Stack(alignment: Alignment.centerRight, children: [
                        Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          width: width * 0.5,
                          decoration: BoxDecoration(
                              color: AppColors.SILTY,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              // '$gender',
                              'Male',
                              style: const TextStyle(
                                color: AppColors.SURFSIDE,
                                fontFamily: 'comic',
                                fontSize: Dimensions.text_field,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ),

                        // -------------------dropdown----------------------
                        Container(
                          height: 50,
                          width: width * 0.3,
                          decoration: const BoxDecoration(
                              color: AppColors.BASE_Mud,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                bottomLeft: Radius.circular(0),
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              )),
                          child: DropdownButton(
                            // value: hint_height,
                            items:
                                <String>['Male', 'Female'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            icon: const Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: AppColors.WHITE,
                              size: 25,
                            ),
                            onChanged: (String? value) {
                              // setState(() {
                              //   gender = value!;
                              // });
                            },
                          ),
                        ),
                      ]),
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
