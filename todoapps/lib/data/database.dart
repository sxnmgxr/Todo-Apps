import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box("mybox");

  // run this method if this is 1st time ever opening apps
  void createIntialData() {
    toDoList = [
      ["make tutorial", false],
      ["do exercise", false],
      ["Eeat a lot", false],
    ];
  }

  //load the dat from database

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }
  // update the database

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
