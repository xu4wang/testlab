import 'todoItem.dart';

final String todoTable = "TodoItems";

class DataAccess {
  static final DataAccess _instance = DataAccess._internal();
  Map<int, TodoItem> m={};
  int id = 0;

  factory DataAccess() {
    return _instance;
  }

  DataAccess._internal();

  open() {

    // This is just a convenience block to populate the database if it's empty.
    // We likely wouldn't use this in a real application
    if((getTodoItems()).length == 0) {
      insertTodo(TodoItem(name: "Create First Todo", isComplete: true));
      insertTodo(TodoItem(name: "Run a Marathon"));
      insertTodo(TodoItem(name: "Create Todo_Flutter blog post"));
    }
  }

  List<TodoItem> getTodoItems()  {
    return this.m.values.toList();
  }

  insertTodo(TodoItem item) {
    this.m[this.id]=item;
    this.id = this.id + 1;
  }

  updateTodo(TodoItem item) {
    int i = item.id;
    this.m[i]=item;
  }

  deleteTodo(TodoItem item) {
    int i = item.id;
    this.m.remove(i);
  }
}
