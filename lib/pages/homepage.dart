import 'package:flutter/material.dart';
import 'package:todo/utils/todo_tile.dart';

class HomePage extends StatefulWidget{
  HomePage({super.key}){
    debugPrint("Todo App created");
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list to do tasks
  List toDolist = [
    ["Code", false],
    ["Study", false],
    ["Smoke", true],
  ];

  void checkBoxchanged(bool? value, int index){
    setState(() {
      toDolist[index][1] = !toDolist[index][1];
    });
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
          elevation: 1,
        ),
        backgroundColor: const Color.fromARGB(255, 236, 226, 136),
        body: ListView.builder(
          itemCount: toDolist.length,
          itemBuilder: (context, index) => TodoTile(
            taskName: toDolist[index][0], 
            taskCompleted: toDolist[index][1], 
            onChanged: (value) => checkBoxchanged(value, index),
        ),
      ),
    )
    )
    ;
  }
}