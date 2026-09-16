import 'package:todo/feature/create_task/data/model/task_model.dart';

class TaskListState {
  final bool isLoading;
  final List<TaskModel> tasks;
  final String? errorMessage;

  TaskListState({
    this.isLoading = true,
    this.tasks = const [],
    this.errorMessage,
  });

  TaskListState copyWith({
    bool? isLoading,
    List<TaskModel>? tasks,
    String? errorMessage,
  }) {
    return TaskListState(
      isLoading: isLoading ?? this.isLoading,
      tasks: tasks ?? this.tasks,
      errorMessage: errorMessage,
    );
  }
}