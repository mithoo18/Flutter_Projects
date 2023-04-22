import 'dart:ffi';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Push Notification Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "Title will appear here";
  String messageData = "Message text will appear here";

  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();

    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(
            sound: true, badge: true, alert: true, provisional: true));

    _firebaseMessaging.configure(onMessage: (message) async {
      setState(() {
        print(message);
        title = message["notification"]["title"];
        messageData = message["notification"]["body"];
        notification(context, title, messageData);
      });
    }, onLaunch: (message) async {
      setState(() {
        print(message);
        title = message["notification"]["title"];
        messageData = message["notification"]["body"];
        notification(context, title, messageData);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Push Notification Demo"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: <Widget>[
                Text(
                  '$title',
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  messageData,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
        ));
  }

  Future notification(
      BuildContext context, String title, String messageText) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            buttonPadding: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  messageText,
                  style: TextStyle(fontSize: 16.0),
                )
              ],
            ),
            actions: [
              FloatingActionButton(
                onPressed: () => Navigator.pop(context),
                child: Text('ok'),
              )
            ],
          );
        });
  }
}
