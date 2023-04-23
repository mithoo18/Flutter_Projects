import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> strings = ['Flutter', 'is', 'cool', 'and', 'awesome!'];
  String displayedString = "Hello World";

  void onPressedButton() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(displayedString, style: TextStyle(fontSize: 40.0)),
                Padding(padding: EdgeInsets.all(10.0)),
                ElevatedButton(
                    onPressed: onPressedButton,
                    child: Text(
                      "Press Me",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ));
  }
}
