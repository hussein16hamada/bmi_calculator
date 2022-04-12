import 'dart:math';

import 'package:bmi_calculator/BmiResultScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale =true;
  double height =120;
  int weight =40;
  int age =20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
            'BMI Calculator',

        ),
      ),
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
               children:
               [
                 Expanded(
                   child: GestureDetector(
                     onTap: ()
                     {
                      setState(() {
                       isMale=true;
                      });
                     },
                     child: Container(

                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:
                         const [
                          Image(image: AssetImage('assets/images/male.png'),
                          height: 90,
                            width: 90,
                          ),
                           SizedBox(
                             height: 15,
                           ),
                           Text(
                             'MALE',
                             style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold
                             ),
                           ),
                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10,),
                         color:isMale ?Colors.blue : Colors.grey[400],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 20,
                 ),
                 Expanded(
                   child: Container(

                     child: GestureDetector(
                       onTap: ()
                       {
                         setState(() {
                           isMale=false;
                         });
                       },
                       child: Column(

                         mainAxisAlignment: MainAxisAlignment.center,
                         children:
                         [
                           Image(image: AssetImage('assets/images/female.png'),
                             height: 90,
                             width: 90,
                           ),
                           SizedBox(
                             height: 15,
                           ),
                           Text(
                             'FEMALE',
                             style: TextStyle(
                                 fontSize: 25,
                                 fontWeight: FontWeight.bold
                             ),
                           ),
                         ],
                       ),
                     ),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10,),
                       color: isMale ? Colors.grey[400] : Colors.blue,
                     ),
                   ),
                 ),
               ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children:
                 [
                   Text(
                     'HEIGHT',
                     style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     // to align it with the end of another exatcly
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     children:
                      [
                       Text(
                         '${height.round()}',
                         style: const TextStyle(
                             fontSize: 40,
                             fontWeight: FontWeight.w900
                         ),
                       ),
                       const SizedBox(
                         width: 5,
                       ),
                       const Text(
                         'CM',
                         style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.w900
                         ),
                       ),
                     ],
                   ),
                   Slider(
                       value:height ,
                       max: 220,
                       min: 80,
                       onChanged: (value)
                       {
                         setState(() {
                           height=value;
                         });
                         print(value.round());
                       },
                   ),
                 ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10,),
                    color: Colors.grey[400]
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
               children:
               [
                 Expanded(
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:
                       [
                         Text(
                           'AGE',
                           style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                         Text(
                           '${age}',
                           style: TextStyle(
                               fontSize: 40,
                               fontWeight: FontWeight.w900
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children:
                           [
                             FloatingActionButton(
                                 onPressed: ()
                                 {
                                   setState(() {
                                     age --;
                                   });
                                 },
                               heroTag: 'age-',
                               mini: true,
                               child: Icon(Icons.remove),
                             ),
                             FloatingActionButton(
                               onPressed: ()
                               {
                                setState(() {
                                  age ++;
                                });
                               },
                               heroTag: 'age+',
                               mini: true,
                               child: Icon(Icons.add),
                             ),
                           ],
                         )
                       ],
                     ),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10,),
                       color: Colors.grey[400],
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:
                       [
                         Text(
                           'WEIGHT',
                           style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                         Text(
                           '${weight}',
                           style: TextStyle(
                               fontSize: 40,
                               fontWeight: FontWeight.w900
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children:
                           [
                             FloatingActionButton(
                               onPressed: ()
                               {
                                setState(() {
                                  weight --;
                                });
                               },
                               heroTag: 'weight-',
                               mini: true,
                               child: Icon(Icons.remove),
                             ),
                             FloatingActionButton(
                               onPressed: ()
                               {
                                 setState(() {
                                   weight ++;
                                 });
                               },
                               heroTag: 'weight+',
                               mini: true,
                               child: Icon(Icons.add),
                             ),
                           ],
                         )
                       ],
                     ),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10,),
                       color: Colors.grey[400],
                     ),
                   ),
                 ),
               ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              height: 50,
              onPressed: ()
              {
                 var result =weight / pow(height/100, 2);
                  Navigator.push
                    (context,
                      MaterialPageRoute(
                        // builder:(context) =>BmiResultScreen() ,
                        builder: (context){
                          return BmiResultScreen(result,isMale ? 'Male' : 'Female',age);
                        }
                      ));
              },
            child: Text(
              'CALCULATE',
              style: TextStyle(
                color: Colors.white,

              ),
            ),),
          ),

        ],
      ),
    );
  }
}
