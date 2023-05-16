import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  bool _visible = true;

  AnimationController _animationController;

  var _color = Colors.red;
  var _height = 200.0;
  var _width = 400.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 10), vsync: this)
          ..repeat();

    Timer(Duration(seconds: 15), () {
      animateContainer();
    });

    Timer(Duration(seconds: 15), () {
      setState(() {
        _visible = !_visible;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
        ),
        AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: Duration(seconds: 2),
          color: Colors.transparent,
          height: _height,
          width: _width,
          child: Image.asset("images/abc.png"),
        ),
      ],
    )));
  }

  animateContainer() {
    setState(() {
      _height = _height == 200 ? 0 : 200;
      _width = _width == 400 ? 0 : 400;
    });
  }
}
