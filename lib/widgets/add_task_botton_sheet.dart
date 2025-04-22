import 'package:flutter/material.dart';
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
        child: SingleChildScrollView(child: AddTaskFromBotton()),
      ),
    );
  }
}

