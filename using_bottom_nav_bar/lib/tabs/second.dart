import 'dart:convert';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.adb,
                  size: 160.0,
                  color: Colors.white,
                ),
                Text(
                  "Second Tab",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ));
  }
}
