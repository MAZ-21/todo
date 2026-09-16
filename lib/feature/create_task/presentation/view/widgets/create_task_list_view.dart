import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/create_task/data/repo/task_repo_impl.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/task_details_container.dart';
import 'package:todo/feature/create_task/presentation/view/widgets/task_item_container.dart';
import 'package:todo/feature/create_task/presentation/view_model/task_list_cubit/task_list_cubit.dart';
import 'package:todo/feature/create_task/presentation/view_model/task_list_cubit/task_list_state.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TaskListCubit(FirebaseTaskRepository()),
      child: const TaskListBody(),
    );
  }
}

class TaskListBody extends StatelessWidget {
  const TaskListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskListCubit, TaskListState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.errorMessage != null) {
          return Center(child: Text('Error: ${state.errorMessage}'));
        }

        if (state.tasks.isEmpty) {
          return const TaskDetailsContainer();
        }
        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          itemCount: state.tasks.length,
          itemBuilder: (context, index) {
            final task = state.tasks[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Dismissible(
                key: ValueKey(task.id),
                direction: DismissDirection.endToStart,
                onDismissed: (_) =>
                    context.read<TaskListCubit>().deleteTask(task.id),
                background: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                child: TaskItemContainer(task: task),
              ),
            );
          },
        );
      },
    );
  }
}
