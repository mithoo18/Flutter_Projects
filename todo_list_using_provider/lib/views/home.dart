import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/add_button.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('rebuilding Home View');

    return Scaffold(
      appBar : AppBar(
        title: Text(title),
      ),
      body: Center(
        child: TodoListWdt(),
      )
      floatingActionButton: AddButton(),
    );
  }
}
