import 'package:flutter/material.dart';
import 'package:to_do_app/model/todo_model.dart';
import 'package:to_do_app/widgets/todo_item.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  List<TodoModel> tasks = [
    TodoModel(task: 'go to the gym', isDone: false),
    TodoModel(task: 'go to the gym', isDone: false),
    TodoModel(task: 'go to the gym', isDone: false),
  ];
  void cheackBoxChanged(bool? value, int index) {
    setState(() {
      tasks[index].isDone = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TodoItem(
          tasks: TodoModel(
            task: tasks[index].task,
            isDone: tasks[index].isDone,
          ),
          onChanged: (value) {
            cheackBoxChanged(value, index);
          },
        );
      },
    );
  }
}
