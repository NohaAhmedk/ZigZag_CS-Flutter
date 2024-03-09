import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Counter());
}
class Counter extends StatefulWidget {


  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int teamA=0;
  int teamB=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Color(0XffD8C0F0),

          title: Text('counter'),
            centerTitle:true,
        ) ,
        body:Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 2,
            ),

            Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Column(
                    children: [
                      Text('Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),),
                      Text('$teamA',
                        style: TextStyle(
                          fontSize: 64,
                          fontWeight:FontWeight.bold
                        ),),

                    ] ),

                Spacer(
                  flex: 2,
                ),

                Expanded(
                  child: Container(
                    height: 150,
                    alignment: Alignment.center,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),),


                Column(
                    children: [ ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          backgroundColor: Color(0XffD8C0F0),
                          foregroundColor: Colors.black,

                        ) ,
                        onPressed: (){
                          teamA++;
                          setState(() {

                          });
                        },
                        child: Text('Add 1 point')),
                      Divider(
                        thickness: 2,
                        indent: 80,
                        endIndent: 80,
                      ),
                      ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Color(0XffD8C0F0),
                            foregroundColor: Colors.black,

                          ) ,
                          onPressed: (){
                            teamA=teamA+2;
                            setState(() {

                            });
                          },
                          child: Text('Add 2 point')),
                      Divider(
                        thickness: 2,
                        indent: 80,
                        endIndent: 80,
                      ),
                      ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Color(0XffD8C0F0),
                            foregroundColor: Colors.black,

                          ) ,
                          onPressed: (){
                            teamA=teamA+3;
                            setState(() {

                            });
                          },
                          child: Text('Add 3 point')),
                    ] ),

                Spacer(
                  flex: 1,
                ),
              ]





              ,),
            Spacer(
              flex: 1,
            ),
            Divider(
              thickness: 3,
              indent: 80,
              endIndent: 80,
              color: Color(0XffD8C0F0),
            ),
            Spacer(
              flex: 1,
            ),


            Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Column(
                    children: [
                      Text('Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),),
                      Text('$teamB',
                        style: TextStyle(
                          fontSize: 64,
                            fontWeight:FontWeight.bold
                        ),),

                    ] ),


                Spacer(
                  flex: 2,
                ),

                Expanded(
                  child: Container(
                    height: 150,
                    alignment: Alignment.center,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),),


                Column(
                    children: [ ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          backgroundColor: Color(0XffD8C0F0),
                          foregroundColor: Colors.black,

                        ) ,
                        onPressed: (){
                          teamB++;
                          setState(() {

                          });
                        },
                        child: Text('Add 1 point')),
                      Divider(
                        thickness: 2,
                        indent: 80,
                        endIndent: 80,
                      ),
                      ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Color(0XffD8C0F0),
                            foregroundColor: Colors.black,

                          ) ,
                          onPressed: (){
                            teamB = teamB+2;
                            setState(() {

                            });
                          },
                          child: Text('Add 2 point')),
                      Divider(
                        thickness: 2,
                        indent: 80,
                        endIndent: 80,
                      ),
                      ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Color(0XffD8C0F0),
                            foregroundColor: Colors.black,

                          ) ,
                          onPressed: (){
                            teamB = teamB+3;
                            setState(() {

                            });
                          },
                          child: Text('Add 3 point')),
                    ] ),

                Spacer(
                  flex: 1,
                ),

              ]




              ,),
          VerticalDivider(
            thickness: 3,

            color: Color(0XffD8C0F0),

          ),
            Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor: Color(0XffD8C0F0),
                  foregroundColor: Colors.black,

                ) ,
                onPressed: (){
                  teamB=0;
                  teamA=0;
                  setState(() {

                  });
                },
                child: Text('Reset')),

            ],


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




