
import 'package:flutter/material.dart';

import 'screens/dashboard.dart';

void main() { 
  runApp(Bytebank());
}

class Bytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

     
    return MaterialApp(
      home: Dashboard(),
       theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
    ));
    
  }
}


