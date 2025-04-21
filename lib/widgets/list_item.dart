
import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/todo_item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return TodoItem(value: true);
      },
    );
  }
}
