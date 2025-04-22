import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubit/cubit/todo_cubit.dart';
import 'package:to_do_app/model/todo_model.dart';
import 'package:to_do_app/widgets/todo_item.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoCubit, TodoState>(
      builder: (context, state) {
        List<TodoModel> tasks = BlocProvider.of<TodoCubit>(context).task ?? [];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return TodoItem(
                tasks: TodoModel(
                  task: tasks[index].task,
                  isDone: tasks[index].isDone,
                ),
                onChanged: (value) {
                  setState(() {
                    tasks[index].isDone = value!;
                  });
                },
              );
            },
          ),
        );
      },
    );
  }
}
