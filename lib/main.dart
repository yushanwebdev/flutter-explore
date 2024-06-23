import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/first_page.dart';
import 'package:flutter_demo/pages/second_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static List names = ["John", "Doe", "Jane", "Doe"];

  void userTapped() {
    print("User tapped the screen!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {'/secondpage': (context) => SecondPage()},
    );
  }
}
