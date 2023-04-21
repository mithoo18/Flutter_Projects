import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infinite List',
      theme: ThemeData(
          primaryColor: Colors.blue, accentColor: Colors.lightBlue),
      home: RandomWords(),
    );
  }

class RandomWords extends State<RandomWords>{
  final _suggestions = <WordP>
}

}
