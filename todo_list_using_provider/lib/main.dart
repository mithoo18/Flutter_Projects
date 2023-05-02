import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_using_provider/notiifier/todo_list.dart';
import 'package:todo_list_using_provider/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<TodoList>(
        create: (context) => TodoList(),
        child: MyHomePage(
          title: "Flutter Demo Home Page",
        ),
      ),
    );
  }
}
