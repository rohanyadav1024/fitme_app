
import 'package:fitme/onboarding/getstarted.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_images.dart';
import '../../resources/app_string.dart';
import '../../reusable/widgets/reusable_widgets.dart';
import 'gender_view.dart';

class NamePage extends StatelessWidget {
  const NamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return // Generated code for this Column Widget...
        Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
              // height: 900,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(width: 20,color: Colors.transparent,),
                            LinearPercentIndicator(
                              percent: 0.2,
                              width: 120,
                              lineHeight: 8,
                              animation: true,
                              progressColor: const Color(0xFF7165E3),
                              backgroundColor: const Color(0xFFE9E9E9),
                              barRadius: const Radius.circular(12),
                              padding: EdgeInsets.all(2),
                            ),
                            GestureDetector(
                              onTap: () async {
                                Get.to(() => GetStarted());
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
                                    text: '1',
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
                                  EdgeInsetsDirectional.fromSTEB(96, 12, 96, 0),
                              child: Text(
                                AppString.createProfile,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(84, 12, 84, 0),
                              child: Text(
                                'Enter Your Name',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 14,
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.all(8),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                AppImages.profile,
                                width: 300,
                                fit: BoxFit.fitWidth,
                              ),
                              // ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
              
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(48, 48, 48, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    // color: FlutterFlowTheme.of(context).secondaryBackground,
              
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: Color(0x0D000000),
                                        offset: Offset(0, 0),
                                      )
                                    ],
              
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: TextFormField(
                                    // controller: _model.textController,
              
                                    obscureText: false,
              
                                    decoration: const InputDecoration(
                                      hintText: 'Your Name',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          // color: FlutterFlowTheme.of(context).primary,
              
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          // color: FlutterFlowTheme.of(context).secondary,
              
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.blue,
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              24, 0, 24, 0),
                                    ),
              
                                    // _model.textControllerValidator.asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsetsDirectional.only(bottom:35),
                          child: Bottom_Button(
                            activity: ()async {
                              Get.to(() =>  GenderPage());
                            },
                            text: 'Continue',
                          ))
                    ]),
              ))),
    );
  }
}
