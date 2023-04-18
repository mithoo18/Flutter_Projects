import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGridView {
  GestureDetector getStructuredGridCell(name, image) {
    return GestureDetector(
      onTap: () {
        print("onTap Called");
      },
      child: Card(
          elevation: 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Image(image: AssetImage('data_repo/img/' + image)),
              Center(
                child: Text(name),
              )
            ],
          )),
    );
  }

  GridView build() {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("Facebook", "social/facebook.png"),
        getStructuredGridCell("Twitter", "social/facebook.png"),
        getStructuredGridCell("Instagram", "social/facebook.png"),
        getStructuredGridCell("Linkedin", "social/facebook.png"),
        getStructuredGridCell("Google Plus", "social/facebook.png"),
        getStructuredGridCell("Launcher Icon", "social/facebook.png"),
      ],
    );
  }
}
