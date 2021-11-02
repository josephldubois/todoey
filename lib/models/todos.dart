import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/widgets/todo.dart';

class Todos extends ChangeNotifier{
  List<Todo> todos = [];

  void addTodo(String text){
    todos.add(Todo(
      text: text,
      status: false,
    ));
    notifyListeners();
  }

  void updateTodo(Todo todo){
    todo.toggleStatus();
    notifyListeners();
  }

  void deleteTodo(int index){
    todos.removeAt(index);
    notifyListeners();
  }
}