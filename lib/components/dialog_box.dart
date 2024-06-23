import 'package:flutter/material.dart';
import 'package:flutter_demo/components/custom_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.yellow,
        content: Container(
            height: 120.0,
            child: Column(
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter task",
                      hintStyle: TextStyle(color: Colors.black)),
                ),
                Row(
                  children: [
                    CustomButton(text: "Save", onPressed: onSave),
                    CustomButton(text: "Cancel", onPressed: onCancel),
                  ],
                )
              ],
            )));
  }
}
