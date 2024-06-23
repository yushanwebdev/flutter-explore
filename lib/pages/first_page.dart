import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Icon(
              Icons.account_circle,
              size: 48,
            )),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () => {
                      Navigator.pop(context),
                      Navigator.pushNamed(context, "/secondpage"),
                    }),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () => {
                      Navigator.pushNamed(context, "/secondpage"),
                    }),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/secondpage');
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}
