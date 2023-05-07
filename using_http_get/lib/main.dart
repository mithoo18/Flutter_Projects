import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyGetHttpData()));
}

class MyGetHttpData extends StatefulWidget {
  @override
  MyGetHttpData createState() => MyGetHttpData();
}

class MyGetHttpData extends State<MyGetHttpData> {
  final String url = "https://swapi.dev/api/people";
  List data;

  Future<String> getJSONData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      var dataConvertedToJSON = json.decode(response.body);
      try {
        if (dataConvertedToJSON.statusCode == 200) {
          data = dataConvertedToJSON['results'];
        }
      } catch (e) {
        print(dataConvertedToJSON.statusCode);
      }
    });
    return "Successful";
  }
}
