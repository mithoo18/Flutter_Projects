import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handeling_routes/screens/about.dart';
import 'package:handeling_routes/screens/home.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    routes: <String, WidgetBuilder>{
      AboutPage.routeName: (BuildContext context) => AboutPage(),
    },
  ));
}
