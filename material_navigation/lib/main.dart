import 'package:flutter/material.dart';

void main() {
  runApp(NavigationExampleApp());
}

class NavigationExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go To Second'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => SecondScreen()));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Go To First'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ));
  }
}
