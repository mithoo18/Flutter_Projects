import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  var nameOfApp = "Persist Key Value";
  var counter = 0;
  var key = "counter";

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = (prefs.getInt(key) ?? 0);
    });
  }

  _onDecrementHit() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0) - 1;
    });

    // Save Value
    prefs.setInt(key, counter);
  }

  _onIncrementHit() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      counter = (prefs.getInt(key) ?? 0) + 1;
    });

    prefs.setInt(key, counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text(nameOfApp),
      ),
      // Body
      body: Container(
        // Center the content
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$counter',
                textScaleFactor: 10.0,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                  onPressed: _onIncrementHit, child: Text('Increment Counter')),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                  onPressed: _onDecrementHit, child: Text('Decrement Counter')),
            ],
          ),
        ),
      ),
    );
  }
}
