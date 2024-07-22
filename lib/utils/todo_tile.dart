// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Row(
          children: [
            // Checkbox
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
            ),

            // Task Name
            Text("Make Tutorial"),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

// 1:19:12
