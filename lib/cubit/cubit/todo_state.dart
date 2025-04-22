part of 'todo_cubit.dart';

@immutable
sealed class TodoState {}

final class TodoInitial extends TodoState {}

final class TodoLoading extends TodoState {}

final class TodoSuccess extends TodoState {}

final class TodoFailure extends TodoState {
  final String errMessage;
  TodoFailure(this.errMessage);
}
