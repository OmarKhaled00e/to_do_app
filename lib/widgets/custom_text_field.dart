import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Enter your task',
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}
