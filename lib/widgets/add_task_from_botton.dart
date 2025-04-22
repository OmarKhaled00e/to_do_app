import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubit/cubit/todo_cubit.dart';
import 'package:to_do_app/model/todo_model.dart';
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
  bool? isDone;
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
          BlocBuilder<TodoCubit, TodoState>(
            builder: (context, state) {
              return CustomButton(
                      isLoading: state is TodoLoading ? true: false,
                      onTap: () {
                        if (fromKey.currentState!.validate()) {
                          fromKey.currentState!.save();
                          var todo = TodoModel(task: task! , isDone: false);
                          BlocProvider.of<TodoCubit>(context).addTodo(todo);
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                    );
            },
          ),
        ],
      ),
    );
  }
}
