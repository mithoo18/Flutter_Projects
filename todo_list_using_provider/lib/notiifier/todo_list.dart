import 'package:flutter/cupertino.dart';

import '../models/todo.dart';

class TodoList extends ChangeNotifier {
  List<Todo> _list = new List<Todo>();

  List<Todo> get list => _list;

  void add(Todo newItem) {
    this._list.add(newItem);
    notifyListeners();
  }

  void remove(Todo removedItem) {
    this._list.remove(removedItem);
    notifyListeners();
  }

  void clearDoneItem() {
    this._list.remove((Todo element) => element.done);
    notifyListeners();
  }
}
