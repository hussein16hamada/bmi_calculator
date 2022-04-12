import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
 late final double result ;
 late final String isMale;
 late final int age ;

 BmiResultScreen( this.result,  this.isMale,  this.age);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //default already there but if you want ot customize it do that
        // leading: IconButton(
        //   onPressed: ()
        //   {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(
        //     Icons.keyboard_arrow_left,
        //
        //   ),
        // ),
        title: Text(
          'BMI Result'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children:
          [
            Text(
              'Gender : ${isMale}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),
            ),
            Text(
              'Result :${result.round()} ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),
            ),
            Text(
              'Age : ${age}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
