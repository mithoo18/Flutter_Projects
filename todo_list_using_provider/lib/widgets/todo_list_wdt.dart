import 'package:flutter/cupertino.dart';
import 'package:todo_list_using_provider/notiifier/todo_list.dart';
import 'package:todo_list_using_provider/widgets/todo_list_item_wdt.dart';

import '../models/todo.dart';

class TodoListWst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('building Todo List Wdt');

    return Container<TodoList>(builder: (context, todoList, child) {
      print('rebuilding Consumer Todo List Wdt');

      return Consumer<TodoList>(builder: (context, todoList, child) {
        print('rebuilding Consumer Todo List Wdt');

        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: todoList.list.length,
          itemBuilder: ((context, index) {
            return ChangeNotifierProvider<Todo>(
                create: (context) => todoList.list[index],
                child: new TodoListItemWdt());
          }),
        );
      });
    });
  }
}
