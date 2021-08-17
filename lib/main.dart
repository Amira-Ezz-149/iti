import 'package:flutter/material.dart';
import 'package:iti_training/screens/user_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iti_training',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: UserScreen(),
    );
  }
}
