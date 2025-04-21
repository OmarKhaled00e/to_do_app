import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.value, this.onChanged});
  final bool value;
  final void Function(bool?)? onChanged;
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
            Checkbox(value: value, onChanged: onChanged),
            SizedBox(width: 4),
            Text(
              'code with flutter',
              style: TextStyle(
                decoration:
                    value ? TextDecoration.lineThrough : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
