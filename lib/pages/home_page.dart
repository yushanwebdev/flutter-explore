import 'package:flutter/material.dart';
import 'package:flutter_demo/components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    {"taskName": "Task 1", "taskCompleted": false},
    {"taskName": "Task 2", "taskCompleted": false},
    {"taskName": "Task 3", "taskCompleted": false},
    {"taskName": "Task 4", "taskCompleted": false},
    {"taskName": "Task 5", "taskCompleted": false},
  ];

  void updateTask(int index, bool value) {
    setState(() {
      toDoList[index]["taskCompleted"] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(title: Text("TO DO"), centerTitle: true),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return ToDoTile(
                  taskName: toDoList[index]["taskName"],
                  taskCompleted: toDoList[index]["taskCompleted"],
                  onChanged: (value) => updateTask(index, value!));
            },
            itemCount: toDoList.length));
  }
}
