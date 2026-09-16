import 'package:todo/feature/create_task/data/model/task_model.dart';

class CreateTaskState {
  final bool isSubmitting;
  final bool isSuccess;
  final TaskModel draft;
  final String? errorMessage;

  CreateTaskState({
    this.isSubmitting = false,
    this.isSuccess = false,
    required this.draft,
    this.errorMessage,
  });

  factory CreateTaskState.initial() {
    return CreateTaskState(draft: TaskModel.empty());
  }

  CreateTaskState copyWith({
    bool? isSubmitting,
    bool? isSuccess,
    TaskModel? draft,
    String? errorMessage,
  }) {
    return CreateTaskState(
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      draft: draft ?? this.draft,
      errorMessage: errorMessage,
    );
  }
}