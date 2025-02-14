import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page.dart';
import 'package:flutter_demo/pages/profile_page.dart';
import 'package:flutter_demo/pages/second_page.dart';
import 'package:flutter_demo/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void _navigationBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;

  List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _navigationBottomBar,
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          // profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

          // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
