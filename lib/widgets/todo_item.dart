import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do_app/model/todo_model.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, this.onChanged, required this.tasks, this.onDelete});

  final void Function(bool?)? onChanged;
   final void Function()? onDelete;
  final TodoModel tasks;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [SlidableAction(onPressed: (_) => onDelete?.call(),
        icon: Icons.delete,
        backgroundColor: Colors.red.shade300,)]),
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
      ),
    );
  }
}
