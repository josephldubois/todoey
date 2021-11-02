import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/todos.dart';
import 'todo.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<Todos>(
      builder: (context, todos, child) {
        return ListView.builder(
          padding: const EdgeInsets.all(40.0),
          itemCount: todos.todos.length,
          itemBuilder: (BuildContext context, int index) {
            final todo = todos.todos[index];
            return GestureDetector(
              onLongPress: () => todos.deleteTodo(index),
              child: CheckboxListTile(
                title: Text(
                  todo .text,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    decoration: todo.status
                        ? TextDecoration.lineThrough
                        : null,
                  ),
                ),
                value: todo.status,
                activeColor: Colors.lightBlueAccent,
                onChanged: (value) {
                  todos.updateTodo(todo);
                },
              ),
            );
          },
        );
      },
    );
  }
}