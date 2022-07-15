import 'package:flutter/material.dart';

import 'features/presentation/calcScreen.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowMaterialGrid: false,
     home: CalcScreen(),
     
    );
  }
}