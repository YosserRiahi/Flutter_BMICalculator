//Yosser Riahi M2MPDAM
// Here you find the Main settings

import 'package:flutter/material.dart';
import 'package:yosserriahi_bmicalculator/screens/input_page.dart';

void main() {
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
     debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21), //set color to scaffold background
      ),
      home: InputPage(),
    );
  }
}

