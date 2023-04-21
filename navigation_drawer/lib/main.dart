import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:navigation_drawer/screens/account.dart';
import 'package:navigation_drawer/screens/settings.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
        AccountScreen.routeName: (BuildContext context) => AccountScreen(),
      }));
}
