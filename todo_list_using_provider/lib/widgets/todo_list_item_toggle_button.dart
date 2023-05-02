import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/todo.dart';

class TodoListItemToggleButton extends StatelessWidget {
  @override
  Widget Build(BuildContext context) {
    print('build Toggle Item Button');
   
    return Consumer<Todo>(
      builder : (context,todo,child){
        print('rebuilding Consumer Todo List Item Toggle Item Button');

        return new RaisedButton(
          onPressed : (){
            todo.toggle();
          },
          color : todo.done? Colors.blue : Colors.red,
          child : new Icon(Icons.refresh,color : Colors.white70)
        )
      }
    );
  }
}
