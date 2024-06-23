import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue[100],
          body: Center(
            child: Container(
                width: 300,
                height: 300,
                color: Colors.deepPurple,
                child: Text("Mitch KOKO")),
          ),
        ));
  }
}
