import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:to_do_app/constants.dart';
import 'package:to_do_app/model/todo_model.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial());
  List<TodoModel>? task;
  addTodo(TodoModel task) async {
    emit(TodoLoading());

    var notesBox = Hive.box<TodoModel>(kTodoBox);
    List<TodoModel> task = notesBox.values.toList();
    emit(TodoSuccess(task));
  }
}
