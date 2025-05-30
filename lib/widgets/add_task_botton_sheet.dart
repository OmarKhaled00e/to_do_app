import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubit/cubit/todo_cubit.dart';
import 'package:to_do_app/widgets/add_task_from_botton.dart';

class AddTaskBottonSheet extends StatelessWidget {
  const AddTaskBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocConsumer<TodoCubit, TodoState>(
          listener: (context, state) {
            if (state is TodoSuccess) {
              Navigator.pop(context);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Add Task Successfully')));
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(child: AddTaskFromBotton());
          },
        ),
      ),
    );
  }
}
