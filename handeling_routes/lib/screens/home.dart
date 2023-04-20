import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Home Page\nClick on below onPressedonPressedicon to goto About Page",
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/about');
                  },
                  icon: Icon(Icons.info, color: Colors.blue),
                  iconSize: 80.0,
                )
              ],
            ),
          ),
        ));
  }
}
