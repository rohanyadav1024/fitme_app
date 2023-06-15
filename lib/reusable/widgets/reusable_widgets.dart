import 'package:flutter/material.dart';
import '../../resources/AppDimensions.dart';
import '../../resources/app_colors.dart';

// ------------------------------------------------------------------
// -----------------------BOTTOM BUTTON-----------------------
// ------------------------------------------------------------------

class Bottom_Button extends StatelessWidget {
  const Bottom_Button({super.key, required this.text,this.color, this.activity});
  final String text;
  final VoidCallback? activity;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.70,
      height: 65,
      padding: const EdgeInsets.all(0.0),
      decoration: BoxDecoration(
          color: color == null ? Color(0xFFDF3F3F) : color,
          // gradient: const LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight,
          //     colors: [
          //       AppColors.BASE_Mud,
          //       Color.fromARGB(203, 37, 33, 30),
          //       Color.fromARGB(134, 37, 33, 30),
          //       // AppColors.Grey10
          //     ]),
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 15),
                color: Color.fromARGB(70, 0, 0, 0),
                blurRadius: 5)
          ],
          borderRadius: BorderRadius.circular(20)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: activity,

          // ----------------BUTTON TEXT---------------------
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              // color: AppColors.WHITE,

              // fontSize: Dimensions.button_text,
              letterSpacing: 4.5,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}

// ------------------------------------------------------------------
// -----------------------TEXT NORMAL-----------------------
// ------------------------------------------------------------------

class Normal_Text extends StatelessWidget {
  const Normal_Text({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        // color: AppColors.SURFSIDE,
        fontFamily: 'Tanor',
        fontWeight: FontWeight.w500,
        fontSize: Dimensions.normal_text,
        letterSpacing: 0.45,
      ),
    );
  }
}

// // ------------------------------------------------------------------
// // -----------------------BACK BUTTON-----------------------
// // ------------------------------------------------------------------

// class Back_Button extends StatelessWidget {
//   const Back_Button({super.key, this.activity});
//   final VoidCallback? activity;

//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     return Container(
//       height: 50,
//       width: 55,
//       decoration: BoxDecoration(
//         color: AppColors.GREY_DARK,
//         shape: BoxShape.rectangle,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: const [
//           BoxShadow(
//               offset: Offset(0, 0),
//               // color: Color.fromARGB(70, 0, 0, 0),
//               color: AppColors.GREY_DARK,
//               blurRadius: 2)
//         ],
//       ),
//       child: ElevatedButton(
//           onPressed: () => Navigator.pop(context),
//           style: ElevatedButton.styleFrom(
//               elevation: 0,
//               backgroundColor: Colors.transparent,
//               fixedSize: const Size(55, 50),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15))),
//           child: const Icon(
//             Icons.arrow_back_outlined,
//             size: 30,
//             color: AppColors.SURFSIDE,
//           )),
//     );
//   }
// }

// // ------------------------------------------------------------------
// // -----------------------TEXT FIELD PLACEHOLDER-----------------------
// // ------------------------------------------------------------------

class CustomPlaceholderWidget extends StatelessWidget {
  const CustomPlaceholderWidget(
      {super.key, this.label_place, required this.widget, required this.w});
  final String? label_place;
  final Widget widget;
  final double? w;

  @override
  Widget build(BuildContext context) {
    return Column(
      //-------------------name placeholder----------------
      children: [
        label_place == null
            ? Container()
            : Text(
                label_place!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.SURFSIDE,
                  fontSize: Dimensions.placeholder_text,
                  letterSpacing: 2,
                ),
              ),
        const SizedBox(height: 10),

        // --------------placeholder------------------
        Container(
          height: 50,
          width: w,
          decoration: BoxDecoration(
              color: AppColors.SILTY, borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: widget,
          ),
        )
      ],
    );
  }
}

// TextFormField(
//               textCapitalization: TextCapitalization.words,
//               style: const TextStyle(
//                 color: AppColors.SURFSIDE,
//                 fontFamily: 'comic',
//                 fontSize: Dimensions.text_field,
//                 letterSpacing: 0,
//               ),
//               decoration: InputDecoration(
//                 filled: true,
//                 hintText: hint!,
//                 fillColor: Colors.transparent,
//                 border: const UnderlineInputBorder(
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//               // onSaved: (newValue) => (newValue != null)? obj.name = newValue: obj.name = '',
//               onChanged: (newValue) {
//                 obj.name = newValue;
//               },
//             ),
// ------------------------------------------------------------------
// -----------------------DROPDOWN PLACEHOLDER-----------------------
// ------------------------------------------------------------------

class DropdownPlaceholder extends StatelessWidget {
  const DropdownPlaceholder(
      {super.key,
      required this.w,
      required this.widget,
      required this.parameter,
      required this.dropdown});
  final double? w;

  final String parameter;
  final Widget widget;
  final Widget dropdown;

  @override
  Widget build(BuildContext context) {
    return Column(
      //-------------------name placeholder----------------
      children: [
        // --------------dropdown placeholder------------------
        Stack(alignment: Alignment.centerRight, children: [
          Container(
            height: 50,
            width: w,
            decoration: BoxDecoration(
                color: AppColors.SILTY,
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: widget,
            ),
          ),

          // -------------------dropdown----------------------
          Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: const BoxDecoration(
                    color: AppColors.BASE_Mud,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
                child: dropdown,
              ),
            ],
          ),
        ]),
        Container(
            padding: const EdgeInsets.all(
              10,
            ),
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Normal_Text(
              text: parameter,
            ))
      ],
    );
  }
}

// ------------------------------------------------------------------
// -----------------------DigitDataText-----------------------
// ------------------------------------------------------------------

// class DigitDataText extends StatelessWidget {
//   const DigitDataText({super.key, required this.data});
//   final String data;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       data,
//       textAlign: TextAlign.center,
//       style: const TextStyle(
//         color: AppColors.SURFSIDE,
//         fontFamily: 'shippori',
//         fontSize: Dimensions.placeholder_text,
//         letterSpacing: 2,
//       ),
//     );
//   }
// }
