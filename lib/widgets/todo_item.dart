import 'package:flutter/material.dart';
import 'package:to_do_app/model/todo_model_item.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, this.onChanged, required this.tasks});

  final void Function(bool?)? onChanged;
  final TodoModelItem tasks;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Checkbox(
              checkColor: Colors.black,
              value: tasks.isDone,
              onChanged: onChanged,
            ),
            SizedBox(width: 4),
            Text(
              tasks.task,
              style: TextStyle(
                decoration:
                    tasks.isDone
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
