import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  AlertDialog dialog = AlertDialog(
    content: Text(
      "Hello World",
      style: TextStyle(fontSize: 30.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Using Alert Dialog"),
        ),
        body: Container(
          child: Center(
              child: ElevatedButton(
            child: Text("Hi To Alert!"),
            onPressed: () {
              showDialog(
                  context: context, builder: (BuildContext context) => dialog);
            },
          )),
        ));
  }
}
