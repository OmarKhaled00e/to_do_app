import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        elevation: 0,
        title: Center(child: Text('To Do')),
      ),
      body: ListItem(),
    );
  }
}
