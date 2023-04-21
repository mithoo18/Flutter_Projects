import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Load Local Image"),
        ),
        body: Container(
          child: Center(
            child: Text(
              "Hello World!",
              style: TextStyle(color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('data_repo/img/bg1.jpg'),
                  fit: BoxFit.cover)),
        ));
  }
}
