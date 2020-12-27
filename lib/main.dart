import 'package:animal_adopt/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal Adopt',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}