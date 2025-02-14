import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key}){
    debugPrint("Todo App created");
  }

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}