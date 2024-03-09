

import 'package:bmi1/main.dart';
import 'package:bmi1/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
int _value=150;
int valu= _value;
int age=20;
Color? malecolor= Colors.green[100];
Color? femalecolor=Colors.green[100];
int weight=65;
String? gender ;
class _HomepageState extends State<Homepage> {
  @override


  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title:

        Text('BMI CALCULATOR', style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Spacer(
            flex: 2,
          ),
          Row(

            children: [ Column(

                children: [

                  Padding(padding:  const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {

                      malecolor=Colors.blue;
                      femalecolor=Colors.green[100];
                      gender='Male';
                        });
                      },
                      child: Container(
                      
                      
                        height: 180,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: malecolor ,
                        ),

                        width: 180,
                      
                        child: Column(
                      
                          children: [
                      
                            Icon(Icons.male ,size: 100,),
                            Text('Male',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),


                ]),
              Column(

                  children: [
                    Padding(padding:  const EdgeInsets.all(10),
                      child: GestureDetector(

                        onTap: (){
                          setState(() {
                            femalecolor=Colors.pink;
                            malecolor=Colors.green[100];
                            gender="FeMale";
                          });
                        },
                        child: Container(

                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: femalecolor ,
                          ),
                          width: 180,


                          child: Column(

                            children: [
                              Icon(Icons.female ,size: 100,),
                              Text('Famale',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),


                  ])

            ],
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding(
                  padding: const EdgeInsets.all(10),

                    child: Container(
                      width: 380,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0XffC7E3CA) ,
                      ),
                      child: Column(
                          children: [
                            Text('Height',style: TextStyle(
                              fontSize: 24,
                              color: Colors.blueGrey[300],
                            ),),
                            Text('$_value Cm',style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,

                            ),



                            ),


                            Slider(
                              value: _value.toDouble(),
                              min: 0,
                              max: 250,
                              divisions: 250,
                              activeColor: Colors.grey,
                              label: _value.toString(),
                              onChanged: (value) {
                                setState(() {
                                  _value = value.toInt();
                                });
                              },
                            )


                          ]
                      ),
                    ),
                  ),

              ],
            ),

          Spacer(
            flex: 1,
          ),
          Row(

            children: [ Column(

                children: [
                  Padding(padding:  const EdgeInsets.all(10),
                    child: Container(

                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0XffC7E3CA) ,
                      ),
                      width: 180,


                      child: Column(

                        children: [
                          Text('Weight',style: TextStyle(
                            color:  Colors.blueGrey[400],
                            fontSize: 24,
                          ),),
                          Spacer(
                            flex: 1,
                          ),

                          Text('$weight kg',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),),
                          Spacer(
                            flex: 1,
                          ),
                          Row(
                            children: [
                              Spacer(
                                flex: 2,
                              ),
                              IconButton(
                                iconSize: 40,
                                color: Colors.black,
                                style: ButtonStyle(
                                  backgroundColor:MaterialStatePropertyAll(Colors.grey[500]) ,
                                ),
                                icon: const Icon(
                                  Icons.minimize,
                                ),
                                onPressed: () {
                                  weight--;

                                  setState(
                                        () {


                                    },
                                  );
                                },
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              IconButton(
                                iconSize: 40,
                                color: Colors.black,
                                style: ButtonStyle(
                                  backgroundColor:MaterialStatePropertyAll(Colors.grey[500]) ,
                                ),
                                icon:  const Icon(
                                  Icons.add,


                                ),

                                onPressed: () {

                                  setState(
                                        () {
                                          weight++;

                                        } );
                                },

                              ),
                              Spacer(
                                flex: 2,
                              ),
                            ],
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ),


                ]),
              Column(

                  children: [
                    Padding(padding:  const EdgeInsets.all(10),
                      child: Container(

                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0XffC7E3CA) ,
                        ),
                        width: 180,


                        child: Column(

                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Text('Age',style: TextStyle(
                              color:  Colors.blueGrey[400],
                              fontSize: 24,
                            ),),
                            Spacer(
                              flex: 1,
                            ),

                            Text('$age',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),),
                            Spacer(
                              flex: 1,
                            ),
                            Row(
                              children: [
                                Spacer(
                                  flex: 2,
                                ),
                                IconButton(
                                  iconSize: 40,
                                  color: Colors.black,
                                  style: ButtonStyle(
                                    backgroundColor:MaterialStatePropertyAll(Colors.grey[500]) ,
                                  ),
                                  icon: const Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(
                                          () {
                                     age++;
                                      },
                                    );
                                  },
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                IconButton(
                                  iconSize: 40,
                                  color: Colors.black,
                                  style: ButtonStyle(
                                    backgroundColor:MaterialStatePropertyAll(Colors.grey[500]) ,
                                  ),
                                  icon:  const Icon(
                                      Icons.minimize,


                                    ),

                                  onPressed: () {
                                    setState(
                                          () {
                                       age--;
                                      },
                                    );
                                  },

                                ),
                                Spacer(
                                  flex: 2,
                                ),
                              ],

                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                    ),


                  ])

            ],
          ),
           Spacer(
             flex: 1,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [

                   Center(
                    child:ElevatedButton(onPressed: (){


                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Res()));

                    }, child:
                    Text('CALCULATE',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30,


                    ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Color(0XffC7E3CA)),

                    ),
                    )


                  ),


             ],
           ),
          Spacer(
            flex: 3,
          ),

        ],
      ),

    );
  }}