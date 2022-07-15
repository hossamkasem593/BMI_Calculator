import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class BmiScreen extends StatelessWidget {
  
  final int result;
  final bool isMale;
  final int age; 

  const BmiScreen({Key? key, required this.result, required this.isMale, required this.age}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
      leading:IconButton(onPressed: (() {
        Navigator.pop(context);
      }
      ), icon: Icon(Icons.arrow_back)),
      title: Text('BMI Result'),
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Gender : ${isMale ? 'Male':'female'}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Text('Result : $result',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Text('Age : $age',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),


        ],
      ),
    ),



    );
  }
}