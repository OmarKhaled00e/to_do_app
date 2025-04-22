import 'package:flutter/material.dart';
import 'package:to_do_app/model/todo_model_item.dart';
import 'package:to_do_app/widgets/todo_item.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  List<TodoModelItem> tasks = [
    TodoModelItem(name: 'go to the gym', isDone: false),
    TodoModelItem(name: 'go to the gym', isDone: false),
    TodoModelItem(name: 'go to the gym', isDone: false),
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
          tasks: TodoModelItem(
            name: tasks[index].name,
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
