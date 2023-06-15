
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_routes.dart';
import '../../resources/app_string.dart';
import '../resources/app_images.dart';
import '../reusable/widgets/reusable_widgets.dart';
import 'getstarted.dart';
import 'weight_view.dart';


class AgePage extends StatelessWidget {
  const AgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return // Generated code for this Column Widget...
        Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
              height: 900,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: const Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          LinearPercentIndicator(
                            percent: 0.6,
                            width: 120,
                            lineHeight: 8,
                            animation: true,
                            progressColor: const Color(0xFF7165E3),
                            backgroundColor: const Color(0xFFE9E9E9),
                            barRadius: const Radius.circular(12),
                            padding: const EdgeInsets.all(2),
                          ),
                          GestureDetector(
                            onTap: () async {
                              Get.to(() => const GetStarted());
                            },
                            child: const Text(
                              AppString.skip,
                              style: TextStyle(
                                color: Color(0xFF7165E3),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: AppString.step,
                                  style: GoogleFonts.getFont(
                                    'Rubik',
                                    color: AppColors.blue,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                const TextSpan(
                                  text: '3',
                                  style: TextStyle(),
                                ),
                                const TextSpan(
                                  text: '/',
                                  style: TextStyle(),
                                ),
                                const TextSpan(
                                  text: '5',
                                  style: TextStyle(),
                                )
                              ],
                              style: const TextStyle(
                                fontFamily: 'Rubik',
                                color: AppColors.blue,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          // const Padding(
                          //   padding:
                          //       EdgeInsetsDirectional.fromSTEB(96, 12, 96, 0),
                          //   child: Text(
                          //     AppString.gender,
                          //     textAlign: TextAlign.center,
                          //     style: TextStyle(
                          //       fontFamily: 'Rubik',
                          //       fontSize: 20,
                          //       fontWeight: FontWeight.w500,
                          //     ),
                          //   ),
                          // ),
                          // const Padding(
                          //   padding:
                          //       EdgeInsetsDirectional.fromSTEB(84, 12, 84, 0),
                          //   child: Text(
                          //     'Enter Your Name',
                          //     textAlign: TextAlign.center,
                          //     style: TextStyle(
                          //       fontFamily: 'Rubik',
                          //       fontSize: 14,
                          //       letterSpacing: 0.2,
                          //       fontWeight: FontWeight.normal,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.only(top: 55),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              AppImages.age,
                              width: 300,
                              fit: BoxFit.fitWidth,
                            ),
                            // ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),

                            Padding(
                              padding:
                                 const  EdgeInsetsDirectional.fromSTEB(48, 48, 48, 0),
                              child: Container(
                                width: double.infinity,
                                height: 60,
                               
                                 
                            padding:
                                const EdgeInsetsDirectional.all(8),
                            child:const Text(
                              AppString.age,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 20,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                                
                              ),
                             
                                SizedBox(
                                  width: 150,
                                  child: TextFormField(
                                    // controller: _model.textController,
                                
                                    obscureText: false,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Age',
                                    
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.blue,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                          
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.blue,
                                          width: 1,
                                        ),
                                        borderRadius:  BorderRadius.circular(20),                                                                          ),
                                      
                                      errorBorder:const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.blue,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              24, 0, 24, 0),
                                    ),
                                
                                    // style: FlutterFlowTheme.of(context).bodyMedium.override(
                                
                                    //       fontFamily: 'Rubik',
                                
                                    //       color: FlutterFlowTheme.of(context).secondaryText,
                                
                                    //       fontWeight: FontWeight.normal,
                                
                                    //     ),
                                
                                    // validator:
                                
                                    // _model.textControllerValidator.asValidator(context),
                                  ),
                                ),
                  ]),
              
                        ),
                      ),
                    
                    Padding(
                        padding: const EdgeInsetsDirectional.only(bottom: 35),
                        child: Bottom_Button(
                          activity: ()async {
                            Get.to(() => const WeightPage());
                          },
                          text: 'Continue',
                        ))
                  ]
                  ))),
    );
  }
}
