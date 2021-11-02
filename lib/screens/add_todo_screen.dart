import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/todos.dart';
import 'package:todoey_flutter/widgets/todo.dart';

class AddTodoScreen extends StatelessWidget {
  AddTodoScreen({Key? key}) : super(key: key);
  late String newTodoText;

  @override
  Widget build(BuildContext context) {
   return Container(
      color: const Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 25.0,
                  ),
                ),
              ),
              TextField(
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.lightBlueAccent,
                          width: 3.0,
                        )
                    )
                ),
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.lightBlueAccent,
                onChanged: (value){
                  newTodoText = value;
                },
              ),
              const SizedBox(height: 30.0,),
              MaterialButton(
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                height: 50.0,
                onPressed: () {
                  var todos = context.read<Todos>();
                  // todos.todos.add(Todo(
                  //   text: newTodoText,
                  //   status: false,
                  // ));
                  todos.addTodo(newTodoText);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

