import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // text editing controller
  final TextEditingController _controller = TextEditingController();

  // greet user
  void greetUser() {
    final String name = _controller.text;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Hello!'),
          content: Text('Hello, $name!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // input
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  hintText: 'Type your name', border: OutlineInputBorder()),
            ),

            // button
            ElevatedButton(
              child: Text("Tap"),
              onPressed: greetUser,
            )
          ],
        ),
      )),
    );
  }
}
