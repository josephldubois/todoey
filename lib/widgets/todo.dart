class Todo {
  Todo({required this.text, required this.status});
  late String text;
  late bool status;

  void toggleStatus(){
    status = !status;
  }
}