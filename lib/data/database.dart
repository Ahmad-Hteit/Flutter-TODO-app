import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  // refrence the box
  final _mybox = Hive.box('mybox');

  //run this method first time opening app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // lead data
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  //update database
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
