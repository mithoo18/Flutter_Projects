import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ListView Example',
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
          appBar: AppBar(
            title: Text('ListView Example'),
          ),
          body: BodyLayout(),
        ));
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/ay.jpg'),
        ),
        title: Text('Ay Savaşçısı'),
        subtitle: Text('Sailor Moon Animesindeki anakarakter'),
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/merkur.jpg'),
          ),
          title: Text('Merkür Savaşçısı'),
          subtitle: Text('Merkür koruyucu')),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/mars.jpg'),
          ),
          title: Text('Mars Savaşçısı'),
          subtitle: Text('Mars koruyucusu')),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/jupiter.jpg'),
          ),
          title: Text('Jüpiter Savaşçısı'),
          subtitle: Text('Jüpiter koruyucusu')),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/venus.jpg'),
          ),
          title: Text('Venüs Savaşçısı'),
          subtitle: Text('Venüs koruyucusu')),
    ],
  );
}
