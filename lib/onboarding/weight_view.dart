
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_routes.dart';
import '../../resources/app_string.dart';
import '../resources/app_images.dart';
import '../reusable/widgets/reusable_widgets.dart';
import 'views/height_view.dart';

class WeightPage extends StatelessWidget {
  const WeightPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
              
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                            percent: 0.8,
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
                              Get.to(() => const HeightPage());
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
                                  text: '4',
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
                          const Padding(
                            padding:
                                EdgeInsets.all(8),
                            child: Text(
                              AppString.weight,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
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
                           EdgeInsets.all(8),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              AppImages.weight,
                              width: 200,
                              fit: BoxFit.fitWidth,
                            ),
                            // ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),

                            Padding(
                              padding:
                                 EdgeInsets.all(8),
                              child: Container(
                                width: double.infinity,
                                height: 60,
                               
                                 
                              ),),
                             
                                SizedBox(
                                  width: 150,
                                  height: 100,
                                  child: TextFormField(
                                    // controller: _model.textController,
                                
                                    obscureText: false,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Weight/ KGs',
                                    
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
                                          EdgeInsets.all(8),
                                              
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
                            Get.to(() => const HeightPage());
                          },
                          text: 'Continue',
                        ))
                  ]
                  ))),
    );
  }
}


