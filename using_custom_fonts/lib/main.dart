import 'package:flutter/material.dart';
import './utils.dart' as utils;

void main() {
  runApp(MaterialApp(
      title: "Using Custom Fonts",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Using Custom Fonts"),
        ),
        body: Container(
          child: Center(
            child: Text(
              "The quick brown jumps over the lazy dog",
              textAlign: TextAlign.center,
              style: utils.getCustomFontTextStyle(),
            ),
          ),
        ),
      )));
}
