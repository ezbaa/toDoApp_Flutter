import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  // Reference box
  final _myBox = Hive.box('mybox');

  //showing example data if opening the app for the first time ever
  void createInitialData() {
    todoList = [
      ['Make lunch', false],
      ['Workout', false],
    ];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

//Updates database
  void updateDatabase() {
    _myBox.put('TODOLIST', todoList);
  }
}
