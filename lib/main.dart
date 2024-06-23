import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          appBarTheme: AppBarTheme(backgroundColor: Colors.yellow),
        ));
  }
}
