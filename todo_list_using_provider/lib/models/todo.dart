import 'package:flutter/cupertino.dart';

class Todo extends ChangeNotifier {
  final String id;
  String title;
  bool done;

  Todo({required this.id, required this.title, this.done = false});

  void toggle() {
    this.done = !this.done;
    notifyListeners();
  }
}
