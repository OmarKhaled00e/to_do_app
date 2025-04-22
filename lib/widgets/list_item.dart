import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubit/cubit/todo_cubit.dart';
import 'package:to_do_app/widgets/todo_item.dart';
class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoCubit, TodoState>(
      builder: (context, state) {
        if (state is TodoSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
              itemCount: state.task.length,
              itemBuilder: (context, index) {
                final task = state.task[index];
                return TodoItem(
                  tasks: task,
                  onChanged: (value) {
                    setState(() {
                     context.read<TodoCubit>().toggleTask(index, value!);
                    });
                  },
                );
              },
            ),
          );
        } else if (state is TodoLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text("لا يوجد مهام حتى الآن"));
        }
      },
    );
  }
}


// class ListItem extends StatefulWidget {
//   const ListItem({super.key});

//   @override
//   State<ListItem> createState() => _ListItemState();
// }

// class _ListItemState extends State<ListItem> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<TodoCubit, TodoState>(
//       builder: (context, state) {
//         List<TodoModel> tasks = BlocProvider.of<TodoCubit>(context).task ?? [];
//         if (state is TodoSuccess) {
//           return Padding(
//             padding: EdgeInsets.symmetric(vertical: 16),
//             child: ListView.builder(
//               itemCount: state is TodoSuccess ? state.task.length : 0,
//               itemBuilder: (context, index) {
//                 return TodoItem(
//                   tasks: TodoModel(
//                     task: tasks[index].task,
//                     isDone: tasks[index].isDone,
//                   ),
//                   onChanged: (value) {
//                     tasks[index].isDone = value!;
//                     setState(() {});
//                   },
//                 );
//               },
//             ),
//           );
//         } 
//       }
//     );
//       }
    
//   }

