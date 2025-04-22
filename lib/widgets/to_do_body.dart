
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubit/cubit/todo_cubit.dart';
import 'package:to_do_app/model/todo_model.dart';
import 'package:to_do_app/widgets/list_item.dart';

class ToDoBody extends StatefulWidget {
  const ToDoBody({super.key, this.task});
  final TodoModel? task;
  @override
  State<ToDoBody> createState() => _ToDoBodyState();
}

class _ToDoBodyState extends State<ToDoBody> {
  @override
  void initstate() {
    BlocProvider.of<TodoCubit>(context).addTodo(widget.task!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListItem();
  }
}
