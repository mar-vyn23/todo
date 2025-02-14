import 'package:flutter/material.dart';
import 'package:todo/utils/todo_tile.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key}){
    debugPrint("Todo App created");
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Text("To Do"),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: const Color.fromARGB(255, 236, 226, 136),
        body: ListView(
          children: [
            TodoTile(
              taskName: "Finish ToDo app",
              taskCompleted: true,
              onChanged: (p0){},
            ),
          ],
        ),
      ),
    );
  }
}