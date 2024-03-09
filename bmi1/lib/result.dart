
import 'dart:ffi';

import 'package:bmi1/homepage.dart';
import 'package:bmi1/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Res extends StatelessWidget {
   Res({super.key});
double bmi= weight/((valu *valu)/10000) ;
 get b => bmi.toInt();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(

        centerTitle: true,
        title:

        Text('BMI CALCULATOR', style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold),
    ),

    ),
      body: Center(
        child: Column(
          children: [

            Spacer(
              flex: 2,
            ),
          Text('Your Result Are : ', style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold),),

            Spacer(
              flex: 2,
            ),
            Container(


          height:40,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:Colors.green[100],
          ),

          width: 180,
          child: Text('Gender :  $gender ', style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          ),
        ),
            Spacer(
              flex: 2,
            ),
            Container(


              height:40,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Colors.green[100],
              ),

              width: 180,
              child: Text('Hight:  $valu cm', style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Container(


              height:40,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Colors.green[100],
              ),

              width: 180,
              child: Text('Weight:  $weight kg', style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Container(


              height:40,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Colors.green[100],
              ),

              width: 180,
              child: Text('Age: $age ', style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Container(


              height:40,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Colors.green[100],
              ),

              width: 180,
              child: Text('BMI:  $b', style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(
              flex: 2,
            ),

          ],
            ),
      ),
    );
  }
}
