import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // init Hive
  await Hive.initFlutter();

  // open a box
  await Hive.openBox('myBox');

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
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.yellow,
            ),
            appBarTheme: AppBarTheme(color: Colors.yellow)));
  }
}
