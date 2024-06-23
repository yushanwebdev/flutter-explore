import 'package:flutter/material.dart';

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
        home: Scaffold(
            backgroundColor: Colors.blue[100],
            body: GestureDetector(
              onTap: userTapped,
              child: Container(
                width: 400,
                height: 400,
                color: Colors.blue[500],
                child: Center(child: Text("Hello World!")),
              ),
            )));
  }
}
