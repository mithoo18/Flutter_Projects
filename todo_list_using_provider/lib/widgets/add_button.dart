import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_using_provider/notiifier/todo_list.dart';

class AddButton extends StatelessWidget{
@override
Widget build(BuildContext context){
  final TodoList = Provider.of<TodoList(context,listen : false)
  print('build IncrementButton');

  return FloatingActionButton(onPressed: () {
    TodoList.add(
      new Todo(
        id : '${todoList.list.length}',
        title : 'tituloTodo${todoList.list.length}'
      )
    );
  },
  tooltip: 'Increment',
  child: Icon(Icons.add),
  );
}
}