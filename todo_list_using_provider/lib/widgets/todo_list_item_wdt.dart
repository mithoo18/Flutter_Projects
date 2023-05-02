import 'package:flutter/cupertino.dart';
import 'package:todo_list_using_provider/widgets/todo_list_item_display.dart';
import 'package:todo_list_using_provider/widgets/todo_list_item_toggle_button.dart';

class TodoListItemWdt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('rebuilding Todo List Item');

    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TodoListItemDisplay(),
        TodoListItemToggleButton(),
      ],
    );
  }
}
