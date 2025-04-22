import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/custom_button.dart';
import 'package:to_do_app/widgets/custom_text_form_field.dart';

class AddTaskFromBotton extends StatefulWidget {
  const AddTaskFromBotton({super.key});

  @override
  State<AddTaskFromBotton> createState() => _AddTaskFromBottonState();
}

class _AddTaskFromBottonState extends State<AddTaskFromBotton> {
  final GlobalKey<FormState> fromKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? task;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomTextFromField(
            onSaved: (value) {
              task = value;
            },
          ),
          SizedBox(height: 16),
          CustomButton(
            onTap: () {
              if (fromKey.currentState!.validate()) {
                fromKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
