import 'package:fitme/onboarding/onboarding_viewnmodel.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_images.dart';
import '../../resources/app_routes.dart';
import '../../resources/app_string.dart';
import '../../reusable/widgets/reusable_widgets.dart';
import '../age_view.dart';
import '../getstarted.dart';

class GenderPage extends StatelessWidget {
  GenderPage({super.key});

  OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return // Generated code for this Column Widget...
        Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
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
                          percent: 0.4,
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
                                text: '2',
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
                          padding: EdgeInsets.all(8),
                          child: Text(
                            AppString.gender,
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
                          const EdgeInsets.all(8),
                      child: Column(mainAxisSize: MainAxisSize.max, children: [
                        Image.asset(
                          AppImages.gender,
                          width: 300,
                          fit: BoxFit.fitWidth,
                        ),
                        // ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),

                        Padding(
                          padding:
                              EdgeInsets.all(8),
                          child: Container(
                            width: double.infinity,
                            height: 60,

                            // const Padding(
                            padding: const EdgeInsetsDirectional.all(8),
                            child: Text(
                              AppString.description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),

                        // /////for male/female
                        SizedBox(
                          width: width * 0.8,
                          child: Obx(
                            () => Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                            // color: DefinedColors.MISCHKA
                                            //     .withOpacity(.4),
                                            width: 2)),
                                    child: ListTile(
                                      title: const Text(
                                        'Male',
                                        style: TextStyle(
                                            // fontSize: Dimensions.HINT,
                                            // color: DefinedColors.BLACK_80,
                                            ),
                                      ),
                                      leading: Radio<String>(
                                        // activeColor:
                                        //     DefinedColors.POMEGRENATE_1,
                                        value: 'Male',
                                        // groupValue: 'Male',
                                        groupValue:
                                            controller.radioValue.toString(),
                                        onChanged: (_) {
                                          controller.radioValue.value = 'Male';
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                            // color: DefinedColors.MISCHKA
                                            // .withOpacity(.4),
                                            width: 2)),
                                    child: ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      title: const Text(
                                        'Female',
                                        style: TextStyle(
                                            // fontSize: Dimensions.HINT,
                                            // color: DefinedColors.BLACK_80,
                                            ),
                                      ),
                                      leading: Radio<dynamic>(
                                        // activeColor:
                                        // DefinedColors.POMEGRENATE_1,
                                        value: 'Female',
                                        groupValue:
                                            controller.radioValue.toString(),
                                        onChanged: (_) {
                                          controller.radioValue.value =
                                              'Female';
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                  // ///////////////////
                ]),
            Positioned(
              bottom: 35,
              child: Bottom_Button(
                activity: () async {
                  Get.to(() => const AgePage());
                },
                text: 'Continue',
              ),
            )
          ],
        ),
      )),
    );
  }
}
