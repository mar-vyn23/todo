import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  
  const TodoTile(
    {
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      super.key
    }
  );

  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.yellow),
        child: Row(
          children: [
            //checkbox
          Checkbox(
            value: taskCompleted, 
            onChanged: onChanged,
            activeColor: Colors.black,
            ),

            //task name
            Text(taskName),
          ],
        ),  
      ),
    );
  }
}