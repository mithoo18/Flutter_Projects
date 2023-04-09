import 'dart:io';

import 'package:flutter/material.dart';
import 'package:using_tabs/tabs/first.dart';
import 'package:using_tabs/tabs/second.dart';
import 'package:using_tabs/tabs/third.dart';

void main() {
  runApp(MaterialApp(
    title: "Using Tabs",
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          icon: Icon(Icons.favorite),
        ),
        Tab(
          icon: Icon(Icons.favorite),
        ),
        Tab(
          icon: Icon(Icon.adb),
        ),
        Tab(
          icon: Icon(Icon.airport_shuttle),
        ),
      ],
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      children: tabs,
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Appbar
        appBar: AppBar(
            // Title
            title: Text("Using Tabs"),
            // Set the background color of the App Bar
            backgroundColor: Colors.blue,
            // Set the bottom property of the Appbar to include a Tab Bar
            bottom: getTabBar()),
        // Set the TabBar view as the body of the Scaffold
        body: getTabBarView(<Widget>[First(), Second(), Third()]));
  }
}
