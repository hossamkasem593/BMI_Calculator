

import 'dart:math';

import 'package:calculator/features/presentation/widgets/bmi_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({Key? key}) : super(key: key);

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  
  bool isMale = true;
  double height = 120;
  int weight = 40;
  int age = 20;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('BMI Calculator',textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.black),),
    ),
    body: Column(
     children: [
       Expanded(
         child: Padding(
           padding: const EdgeInsets.all(20),
           child: Row(
            children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                  isMale = true;
                  });
                },
                child: Container(
                  color:isMale ? Colors.blue : Colors.grey[400],
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                  Image.asset('assets/images/male.png',height: 90,width: 90,),
                   SizedBox(height: 10,),
                   Text('MALE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                   ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 40,),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    isMale = false;
                  }
                  );
                },
                child: Container(
                  color: !isMale ? Colors.blue : Colors.grey[400],
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                   children: [
                   Image.asset('assets/images/female.png',height: 90,width: 90,),
                   SizedBox(height: 10,),
                   Text('FEMALE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          
                   ],
                  ),
                ),
              ),
            ),
             ],
             ),
         ),
         ),
      
        Container(
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[400],

          ),
          child: Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[400],
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('HEIGHT',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          
                    Text('${height.round()}',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text('CM',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   ],),
                   Slider(
                    max: height,
                     min: 80.0,
                    value: 120,
                     onChanged: (value){
                     setState(() {
                       height = value;
                     });
                     },
                     
                   ),
                  ],
          
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            color: Colors.grey[400],
              

             child: Padding(
               padding: const EdgeInsets.all(20),
               child: Row(
               
                children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                     color: Colors.grey[400],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                          children: [
                            Text('Weight',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          Text('$weight',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               FloatingActionButton(
                                heroTag: 'weihgt+',
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),
                              
                              ),
                              FloatingActionButton(
                                heroTag: 'weihgt-',
                                onPressed: (){
                                setState(() {
                                   weight--;
                                });

                                },
                                mini: true,
                                child: Icon(Icons.remove),
                              
                              ),
                            
                            ],
                          ),
                          ],
                        
                        
                          ),
                        ],
                      ),
                    ),
                ),
                SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                 color: Colors.grey[400],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                          children: [
                            Text('AGE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          Text('$age',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               FloatingActionButton(
                                heroTag: 'agee+',
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),
                              
                              ),
                              FloatingActionButton(
                                heroTag: 'age-',
                                onPressed: (){
                                 setState(() {
                                    age--;
                                 });
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                              
                              ),
                            
                            ],
                          ),
                          ],
                          
                          
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
            ),
             ),
          ),
          
        ),
       Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: double.infinity,
         child: MaterialButton(
          onPressed: (){
           double result = weight / pow(height/100 ,2);
           Navigator.push(context,MaterialPageRoute(builder: (context) => BmiScreen(
            age: age,
            isMale: isMale,
            result: result.round(),
           ),));
           print(result.round());

          },
          child:  Text(' Calculat',textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.white),),
         color: Colors.red,
         ),
       ),
    
      



     ],


    ),




   );
  }
}