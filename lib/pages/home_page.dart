import 'package:flutter/material.dart';
import 'package:flutter_demo/components/dialog_box.dart';
import 'package:flutter_demo/components/todo_tile.dart';
import 'package:flutter_demo/data/database.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference the box
  final _myBox = Hive.box('myBox');
  ToDoDatabase db = ToDoDatabase();

  @override
  void initState() {
    if (_myBox.get('TODOLIST') == null) {
      db.createInitialData();
      db.updateDatabase();
    } else {
      db.loadData();
    }
    super.initState();
  }

  final _controller = TextEditingController();

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDatabase();
  }

  void saveNewTask() {
    setState(() {
      db.toDoList.add({"taskName": _controller.text, "taskCompleted": false});
      _controller.clear();
      Navigator.of(context).pop();
      db.updateDatabase();
    });
  }

  void createTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  void updateTask(int index, bool value) {
    setState(() {
      db.toDoList[index]["taskCompleted"] = value;
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(title: Text("TO DO"), centerTitle: true),
        floatingActionButton: FloatingActionButton(
          onPressed: createTask,
          child: Icon(Icons.add),
          backgroundColor: Colors.yellow,
          shape: CircleBorder(),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return ToDoTile(
                  taskName: db.toDoList[index]["taskName"],
                  taskCompleted: db.toDoList[index]["taskCompleted"],
                  onChanged: (value) => updateTask(index, value!),
                  deleteFunction: (context) => deleteTask(index));
            },
            itemCount: db.toDoList.length));
  }
}
