import 'package:flutter/material.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xFF3A4869),
        body: Container(
          height: height,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical:18,horizontal: 8),
                    child: Text(
                      "DASHBOARD",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Water Intake",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '2000 ml',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: const Text(
                      'Water to be consumed in a day ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 98, 113, 150),
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Workout",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '15%',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: const Text(
                      'Workout percentage this month',
                      style: TextStyle(
                          color: Color.fromARGB(255, 98, 113, 150),
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Medication Reminder",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                 const Padding(
                    padding: EdgeInsets.only(right: 150),
                    child:  Text(
                      'Reminders left for today',
                      style: TextStyle(
                          color: Color.fromARGB(255, 98, 113, 150),
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Container(
                   width: width*.37,
                      // height: 100,
                     
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),
                       color: const Color(0xFF7581A4),),
                       child: Padding(
                         padding: const EdgeInsets.all(12),
                         child: Column(
                           children: const [
                             Text('Height',
                             style: TextStyle(color: Colors.white,
                             fontSize: 20,
                             fontWeight: FontWeight.w400),),
                             SizedBox(height: 10),
                             Text('153 cm',
                             style: TextStyle(color: Color(0xFFFCC438),
                             fontSize: 22,
                             fontWeight: FontWeight.w500),)
                           ],
                         ),

                       ),
                       
                       ),
                       Container(
                      width: width*.37,
                      // height: 100,
                     
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),
                       color: const Color(0xFF7581A4),),
                       child:  Padding(
                         padding:const EdgeInsets.all(12),
                         child:  Column(
                           children: const[
                             Text('Weight',
                             style: TextStyle(color: Colors.white,
                             fontSize: 20,
                             fontWeight: FontWeight.w400),),
                              SizedBox(height: 10),
                             Text('55 Kg',
                             style: TextStyle(color: Color(0xFFFCC438),
                             fontSize: 22,
                             fontWeight: FontWeight.w500),)
                           ],
                         ),
                       ),)],
                  ),
                 const  SizedBox(height: 10),
                  Container(
                      width: width,
                      // height: 80,
                     
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),
                       color: const Color(0xFF7581A4),),
                       child: Padding(
                         padding:  EdgeInsets.all(18),
                         child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:const  [
                             Text('Calorie Burned',
                             style: TextStyle(color: Colors.white,
                             fontSize: 20,
                             fontWeight: FontWeight.w400),),
                             Text('20 cal',
                             style: TextStyle(color:Color(0xFFFCC438),
                             fontSize: 20),)
                           ],
                         ),
                       ),)
                ]),
          ),
        ));
  }
}
